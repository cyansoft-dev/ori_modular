import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/temp_master_collection_cubit.dart';
import '/core/constants/color_constants.dart';
import '/core/constants/value_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../common/presentation/components/button_widget.dart';
import '../../../menu/domain/entities/delivery_master.dart';
import '../../domain/entities/data_collection.dart';
import '../cubit/temp_input_cubit.dart';

import 'input_bst_widget.dart';

class FormBstWidget extends StatefulWidget {
  const FormBstWidget({Key? key}) : super(key: key);

  @override
  State<FormBstWidget> createState() => _FormBstWidgetState();
}

class _FormBstWidgetState extends State<FormBstWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final detail =
        context.select((TempInputCubit cubit) => cubit.state.details) ??
            <DetailTransaction>[];

    final dataMaster = context.select((TempMasterCollectionCubit cubit) => cubit.state);

    final masterBst = injectMaster(dataMaster.dataMaster?.masterBst);

    if (masterBst.isEmpty) {
      return Container();
    }

    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 5.h, bottom: 35.h),
      child: Material(
        elevation: 1,
        color: Colors.white,
        shadowColor: ColorConstants.shadowColor,
        borderRadius: BorderRadius.circular(ValueConstants.borderRadius),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount: masterBst.length,
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
              itemBuilder: (context, index) {
                if (masterBst[index].label == "Header") {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: Text(
                      "${masterBst[index].description}",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  );
                }

                if (masterBst[index].label == "Button") {
                  return Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: buttonProses(context, masterBst[index]),
                  );
                }

                return InputBstWidget(
                  label: masterBst[index].label ?? "",
                  hint: masterBst[index].hint,
                  detailTransaction: detail,
                  data: masterBst[index],
                  onTextChanged: (data) {
                    context.read<TempInputCubit>().setSummary(data);
                  },
                  onSubmitDescription: (id, desc) {
                    context
                        .read<TempInputCubit>()
                        .setDescriptionSummary(id, desc);
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonProses(BuildContext context, MasterBst data) {
    return ButtonWidget(
      onPressed: () {
        context.read<TempInputCubit>().setStatus(TransactionStatus.done);
      },
      label: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "${data.description}",
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  List<MasterBst> injectMaster(List<MasterBst>? data) {
    if (data == null) {
      return <MasterBst>[];
    }

    const header = MasterBst(
      id: 0,
      label: "Header",
      description: "Bukti Setoran Tunai",
    );

    final footer = MasterBst(
      id: data.length + 1,
      label: "Button",
      description: "Simpan",
    );

    return [
      header,
      ...data,
      footer,
    ];
  }
}
