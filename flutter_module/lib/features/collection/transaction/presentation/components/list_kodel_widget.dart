import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '/core/constants/color_constants.dart';
import '/core/constants/value_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../domain/entities/data_collection.dart';
import '../cubit/temp_input_cubit.dart';
import '../cubit/temp_master_collection_cubit.dart';
import 'data_transition_widget.dart';

class ListKodelWidget extends StatelessWidget {
  const ListKodelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedStore =
        context.select((SelectedStoreCubit cubit) => cubit.state);

    final listDelivery = context.select((TempMasterCollectionCubit cubit) =>
        cubit.state.dataMaster?.deliveryInfo);

    if (listDelivery == null || listDelivery.isEmpty) {
      return Center(
        child: Text(
          "list metode pengiriman kosong.",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
      );
    }

    return ListView.separated(
      itemCount: listDelivery.length,
      separatorBuilder: (context, index) => SizedBox(height: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      itemBuilder: (context, index) {
        return Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(ValueConstants.borderRadius),
          color: Colors.white,
          shadowColor: ColorConstants.shadowColor,
          child: InkWell(
            borderRadius: BorderRadius.circular(ValueConstants.borderRadius),
            onTap: () {
              DataCollection data = DataCollection(
                kdtk: selectedStore.kodetoko,
                type: TypeMenu.kodel.toString(),
                delivery: listDelivery[index].jenis,
                idDelivery: listDelivery[index].id,
              );

              context.read<TempInputCubit>().setInitial(data);
            },
            child: Padding(
              padding: EdgeInsets.all(15.h),
              child: Row(
                children: [
                  Container(
                    width: 52.w,
                    height: 52.w,
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      color: ColorConstants.avatarColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15.w),
                    ),
                    child: Hero(
                      tag: "${listDelivery[index].id}",
                      child: Icon(
                        Iconsax.box,
                        color: ColorConstants.iconColor,
                        size: 36.sp,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listDelivery[index].jenis ?? "-",
                          style: GoogleFonts.nunito(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            // letterSpacing: 1,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          listDelivery[index].id ?? "-",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
