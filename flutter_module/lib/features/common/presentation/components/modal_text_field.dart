import 'package:flutter/material.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';
import 'search_text_field.dart';

import '../../../../core/constants/color_constants.dart';
import 'date_field_widget.dart';

class ModalTextField<T extends Object> extends StatefulWidget {
  const ModalTextField({
    Key? key,
    required this.label,
    this.hint,
    this.hintStyle,
    required this.items,
    this.validator,
    this.transitionAnimationController,
    this.onSelect,
  })  : assert(T == String || T == ModalItem),
        super(key: key);

  final String label;
  final String? hint;
  final TextStyle? hintStyle;
  final List<T> items;
  final Function(T)? onSelect;
  final String? Function(String?)? validator;
  final AnimationController? transitionAnimationController;

  @override
  State<ModalTextField<T>> createState() => _ModalTextFieldState<T>();
}

class _ModalTextFieldState<T extends Object> extends State<ModalTextField<T>>
    with SingleTickerProviderStateMixin {
  final ValueNotifier<List<T>> _filteredItem = ValueNotifier(<T>[]);
  late TextEditingController _controller;
  bool isRefresh = false;

  @override
  void initState() {
    super.initState();
    updateValue();
  }

  @override
  void didUpdateWidget(covariant ModalTextField<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget != oldWidget) {
      updateValue();
      isRefresh = true;
    }
  }

  void updateValue() {
    _filteredItem.value = widget.items;
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    _filteredItem.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: _controller,
      builder: (context, value, _) => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        readOnly: true,
        onTap: () async {
          showSearchModal(context);
        },
        controller: _controller,
        decoration: InputDecoration(
          suffixIcon: const Icon(Icons.arrow_drop_down),
          suffixIconColor: MaterialStateColor.resolveWith((states) =>
              states.contains(MaterialState.error)
                  ? Theme.of(context).colorScheme.error
                  : ColorConstants.fontColor),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.label,
          labelStyle:
              MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
            final Color color = states.contains(MaterialState.error)
                ? Theme.of(context).colorScheme.error
                : ColorConstants.fontColor;
            return TextStyle(color: color);
          }),
          hintText: widget.hint,
          hintStyle: widget.hintStyle,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide:
                BorderSide(width: 1.w, color: ColorConstants.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide:
                BorderSide(width: 1.5.w, color: ColorConstants.borderColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(width: 1.w, color: ColorConstants.iconColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(width: 1.w, color: ColorConstants.iconColor),
          ),
        ),
        validator: (str) {
          if (isRefresh) {
            isRefresh = false;
            return null;
          }

          return widget.validator?.call(str);
        },
      ),
    );
  }

  Future<void> showSearchModal(BuildContext context) async {
    return showModalBottomSheet(
      isScrollControlled: true,
      transitionAnimationController: widget.transitionAnimationController,
      elevation: 2,
      isDismissible: false,
      enableDrag: false,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.w),
          topRight: Radius.circular(30.w),
        ),
      ),
      context: context,
      builder: (builder) {
        return SizedBox(
          height: 750.h,
          child: Stack(
            children: [
              Positioned(
                top: 10.w,
                right: 10.w,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  splashRadius: 30.r,
                  icon: Icon(Icons.close_rounded, size: 42.sp),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Positioned(
                top: 95.h,
                left: 20.w,
                right: 20.w,
                bottom: 20.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SearchTextField(
                      hintText: "Search here",
                      /*fillColor: ColorConstants.canvasColor,*/
                      side: BorderSide(
                          width: 1.w, color: ColorConstants.borderColor),
                      onChanged: filtering,
                    ),
                    SizedBox(height: 24.h),
                    Expanded(
                      child: ValueListenableBuilder<List<T>>(
                          valueListenable: _filteredItem,
                          builder: (context, items, _) {
                            if (items.isEmpty) {
                              return Center(
                                child: Text(
                                  "List data kosong",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              );
                            }
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              separatorBuilder: (context, index) {
                                return const Divider();
                              },
                              itemBuilder: (context, index) {
                                return buildTile(items[index]);
                              },
                              itemCount: items.length,
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void filtering(String data) {
    if (T == String) {
      final filter = (widget.items as List<String>)
          .where((e) => e.contains(data))
          .toList();
      _filteredItem.value = filter.cast<T>();
    }
    if (T == ModalItem) {
      final filter = (widget.items as List<ModalItem>)
          .where((e) => e.title!.contains(data))
          .toList();
      _filteredItem.value = filter.cast<T>();
    }
  }

  Widget? buildTile(T data) {
    if (T == String) {
      final title = data as String;
      return ListTile(
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios_rounded, size: 16.sp),
        onTap: () {
          Navigator.pop(context);
          widget.onSelect?.call(data);
          _controller.text = title;
        },
      );
    }

    if (T == ModalItem) {
      final item = data as ModalItem;
      return ListTile(
        title: Text(item.title ?? "-"),
        subtitle: item.subtitle == null || item.subtitle!.isEmpty
            ? null
            : Text(
                item.subtitle!,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis,
                  color: Colors.grey.shade600,
                ),
              ),
        trailing: Icon(Icons.arrow_forward_ios_rounded, size: 16.sp),
        onTap: () {
          Navigator.pop(context);
          widget.onSelect?.call(data);
          _controller.text = item.title!;
        },
      );
    }

    return null;
  }
}

class ModalItem {
  final String? id;
  final String? title;
  final String? subtitle;

  ModalItem({required this.id, required this.title, required this.subtitle});
}
