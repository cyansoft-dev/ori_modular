import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/constants/color_constants.dart';
import '../../../../core/constants/value_constants.dart';
import '../../../../core/utils/validator.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../common/presentation/components/button_widget.dart';
import '../../../common/presentation/components/image_picker_widget.dart';
import '../../../common/presentation/components/text_field_widget.dart';
import '../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../domain/entities/data_tenant.dart';
import '../components/tenancy_header_delegate.dart';
import '../cubit/transaction_tenant_cubit.dart';
import 'tenancy_page.dart';

class RegisterTenantPage extends StatefulWidget {
  const RegisterTenantPage({Key? key}) : super(key: key);

  @override
  State<RegisterTenantPage> createState() => _RegisterTenantPageState();
}

class _RegisterTenantPageState extends State<RegisterTenantPage>
    with SingleTickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();
  late AnimationController _messageC;
  File? _imageFile;
  String? _productC;
  String? _idTenantC;

  @override
  void initState() {
    super.initState();
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
  }

  @override
  void dispose() {
    _messageC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final store =
        context.select((SelectedStoreCubit cubit) => cubit.state.kodetoko);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocListener<TransactionTenantCubit, AppState<List<DataTenant>>>(
        listener: (context, state) {
          if (state.isSuccess) {
            formKey.currentState!.reset();
            setState(() {});
          }
        },
        child: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverPersistentHeader(
              delegate: TenancyHeaderDelegate(),
            ),
            SliverFillRemaining(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 20.w, right: 20.w, top: 5.h, bottom: 35.h),
                child: Material(
                  elevation: 1.0,
                  borderRadius: BorderRadius.circular(20.w),
                  shadowColor: ColorConstants.shadowColor,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(30.w),
                    child: Form(
                      key: formKey,
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          TextFieldWidget(
                            label: "Jenis Produk",
                            hint: "Input jenis produk",
                            validator: RequiredValidator(
                                errorMessage:
                                    "Jenis produk tidak boleh kosong"),
                            onChanged: (value) {
                              _productC = value;
                            },
                          ),
                          SizedBox(height: 16.h),
                          TextFieldWidget(
                            label: "No PSM",
                            hint: "Input No PSM",
                            validator: RequiredValidator(
                                errorMessage: "No PSM tidak boleh kosong"),
                            onChanged: (value) {
                              _idTenantC = value;
                            },
                          ),
                          SizedBox(height: 16.h),
                          ImagePickerWidget(
                            label: "Foto Tenant",
                            size: Size(double.infinity, 388.h),
                            validator: RequiredValidator(
                                errorMessage: "Foto tenant tidak boleh kosong"),
                            onCapture: (file) {
                              _imageFile = file;
                            },
                          ),
                          SizedBox(height: 24.h),
                          ButtonWidget(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                DataTenant data = DataTenant(
                                  kdtk: store,
                                  jenisProduk: _productC,
                                  noPsm: _idTenantC,
                                  status: TenantStatus.ilegal.toString(),
                                  isActive: true,
                                  tenantImage: _imageFile,
                                );

                                context
                                    .read<TransactionTenantCubit>()
                                    .add(data);
                              }
                            },
                            label: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Iconsax.save_2),
                                SizedBox(width: 10.w),
                                const Text(
                                  "Simpan",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
