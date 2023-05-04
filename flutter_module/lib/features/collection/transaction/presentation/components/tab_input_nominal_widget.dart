import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/data_collection.dart';
import '../cubit/temp_input_cubit.dart';
import 'input_nominal_widget.dart';

class TabInputNominalWidget extends StatefulWidget {
  const TabInputNominalWidget({Key? key, required this.pageIndex})
      : super(key: key);
  final int pageIndex;

  @override
  State<TabInputNominalWidget> createState() => _TabInputNominalWidgetState();
}

class _TabInputNominalWidgetState extends State<TabInputNominalWidget>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late int _index;
  @override
  void initState() {
    super.initState();
    _index = widget.pageIndex;
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataCollection =
    context.select((TempInputCubit cubit) => cubit.state);

    return PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        controller: _pageController,
        itemCount: widget.pageIndex,
        itemBuilder: (context, index) {
          final pageIndex = index + 1;
          return InputNominalWidget(
            index: pageIndex,
            lastIndex: pageIndex == _index,
            dataCollection: dataCollection,
            onPrev: 1 == pageIndex
                ? null
                : (data) {
                    if (data != null) {
                      context.read<TempInputCubit>().setDetail(data);
                    }
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  },
            onNext: (data) {
              if (data == null) return;

              if (pageIndex < _index) {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
                context.read<TempInputCubit>().setDetail(data);
              } else {
                context.read<TempInputCubit>()
                  ..setDetail(data)
                  ..setStatus(TransactionStatus.setSummary);
              }
            },
          );
        });
  }
}
