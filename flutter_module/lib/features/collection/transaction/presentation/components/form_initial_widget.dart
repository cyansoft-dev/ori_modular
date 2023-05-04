import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/constants/value_constants.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../core/utils/validator.dart';
import '../../../../common/presentation/components/button_widget.dart';
import '../../../../common/presentation/components/date_field_widget.dart';
import '../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../common/presentation/components/dropdown_widget.dart';
import '../../../../common/presentation/components/message_widget.dart';
import '../../../../common/presentation/components/modal_text_field.dart';
import '../../../../common/presentation/components/text_field_widget.dart';
import '../../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../menu/domain/entities/delivery_master.dart';
import '../../domain/entities/data_collection.dart';
import '../cubit/temp_input_cubit.dart';
import '../cubit/temp_master_collection_cubit.dart';
import 'data_transition_widget.dart';

class FormInitialWidget extends StatefulWidget {
  const FormInitialWidget({super.key, required this.type});
  final TypeMenu type;

  @override
  State<FormInitialWidget> createState() => _FormInitialWidgetState();
}

class _FormInitialWidgetState extends State<FormInitialWidget>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final dateFormat = DateFormat("dd-MM-yyyy");

  late TextEditingController _dateController;
  String? _detailController;
  late AnimationController _messageC;

  ValueNotifier<TextEditingValue> selectedDate =
      ValueNotifier(const TextEditingValue());
  String? _selectedShift;
  ModalItem? _selectedSender;

  @override
  void initState() {
    super.initState();
    _dateController = TextEditingController();
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = const Duration(milliseconds: 600);
  }

  @override
  void dispose() {
    selectedDate.dispose();
    _dateController.dispose();
    _messageC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectedStore =
        context.select((SelectedStoreCubit cubit) => cubit.state);

    final state = context.watch<TempMasterCollectionCubit>().state;

    return Builder(builder: (context) {
      final listSales = [...?state.dataMaster?.salesDate];
      final listDate = [...listSales.map((e) => e.tanggal!)];

      if (listDate.isEmpty) {
        return Padding(
          padding: EdgeInsets.all(20.w),
          child: Center(
            child: Text(
              "Tanggal sales belum kirim kosong.",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        );
      }

      late List<ModalItem> modalItems;
      if (widget.type == TypeMenu.kodel) {
        final senders = [...?state.dataMaster?.deliveryInfo];
        modalItems = senders
            .map((e) => ModalItem(id: e.id, title: e.jenis, subtitle: e.id))
            .toList();
      } else {
        final senders = [...?state.dataMaster?.senderInfo];
        modalItems = senders
            .map((e) =>
                ModalItem(id: e.id, title: e.name, subtitle: e.keterangan))
            .toList();
      }

      if (modalItems.isEmpty) {
        late String emptyMessage;
        if (widget.type == TypeMenu.kodel) {
          emptyMessage =
              "Data kodel / taskforce belum diupdate oleh finance, silahkan menghubungi finance cabang";
        } else {
          emptyMessage =
              "Data pengiriman belum diupdate oleh finance, Silahkan menghubungi finance cabang";
        }

        return Padding(
          padding: EdgeInsets.all(20.w),
          child: Center(
            child: Text(
              emptyMessage,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        );
      }

      return Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 5.h, bottom: 35.h),
        child: Material(
          elevation: 1,
          color: Colors.white,
          shadowColor: ColorConstants.shadowColor,
          borderRadius: BorderRadius.circular(ValueConstants.borderRadius),
          child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Text(
                    "Data Pengiriman Sales",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                  SizedBox(height: 24.h),
                  ModalTextField(
                    label: "Metode Kirim",
                    hint: "Pilih metode pengiriman",
                    items: modalItems,
                    transitionAnimationController: _messageC,
                    validator: RequiredValidator(
                        errorMessage: "Metode kirim tidak boleh kosong"),
                    onSelect: (value) {
                      _selectedSender = value;
                    },
                  ),
                  SizedBox(height: 16.h),

                  /// widget date picker
                  DateFieldWidget(
                    title: "Tanggal Sales",
                    hint: "Pilih tanggal sales",
                    controller: _dateController,
                    dates: listDate,
                    validator: RequiredValidator(
                        errorMessage: "Tanggal sales tidak boleh kosong"),
                  ),

                  /// widget dropdown shift
                  ValueListenableBuilder<TextEditingValue>(
                    valueListenable: _dateController,
                    builder: (context, value, widget) {
                      List<String>? listShift;
                      SalesDate? selectedDate;
                      bool visible = false;

                      if (value.text.isNotEmpty) {
                        final date = dateFormat.parse(value.text);
                        selectedDate =
                            listSales.firstWhere((e) => e.tanggal.isSame(date));

                        if (selectedDate.setoran != "PERSHIFT") {
                          _selectedShift = selectedDate.setoran;
                        }

                        listShift = selectedDate.shift!;
                        visible = (selectedDate.setoran == "PERSHIFT" &&
                            listShift.isNotEmpty);
                      }

                      return AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        child: visible
                            ? Padding(
                                padding: EdgeInsets.only(top: 16.h),
                                child: DropdownWidget(
                                  label: "Shift",
                                  hint: "Pilih shift sales",
                                  items: listShift!,
                                  onChanged: (value) => _selectedShift = value,
                                  validator: RequiredValidator(
                                      errorMessage: "Shift tidak boleh kosong"),
                                ),
                              )
                            : const SizedBox.shrink(),
                        transitionBuilder: (child, animation) {
                          return ScaleTransition(
                            scale: animation,
                            child: child,
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: 16.h),
                  TextFieldWidget(
                    label: "Jumlah Lampiran",
                    hint: "Input jumlah lampiran",
                    onChanged: (value) => _detailController = value,
                    inputFormat: InputFormat.number,
                    validator: MultiValidator([
                      RequiredValidator(
                          errorMessage: "Juml. lampiran tidak boleh kosong"),
                      ValueValidator(15,
                          errorMessage: "Juml. lampiran maksimal 15 lampiran"),
                    ]),
                  ),
                  SizedBox(height: 24.h),
                  ButtonWidget(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final tgl = dateFormat.parse(_dateController.text);
                        final total = int.parse(_detailController ?? "0.0");

                        if (total < 1) {
                          showMessage(
                            context,
                            "Harap menyertakan lampiran untuk melanjutkan",
                            controller: _messageC,
                            type: MessageType.warning,
                          );

                          return;
                        }

                        DataCollection data = DataCollection(
                          kdtk: selectedStore.kodetoko,
                          type: widget.type.toString(),
                          tanggal: tgl,
                          jumlDetail: total,
                          shift: _selectedShift?.toUpperCase(),
                          delivery: _selectedSender?.title,
                          idDelivery: _selectedSender?.id,
                        );

                        context.read<TempInputCubit>().setTransaction(data);
                      }
                    },
                    label: const Text("Lanjut.",
                        style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
