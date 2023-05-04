import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/constants/color_constants.dart';
import '../../../../core/constants/value_constants.dart';
import '../../../../core/utils/validator.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../routing/app_routing.dart';
import '../../../common/presentation/components/button_widget.dart';
import '../../../common/presentation/components/dialog_message_widget.dart';
import '../../../common/presentation/components/dropdown_widget.dart';
import '../../../common/presentation/components/image_picker_widget.dart';
import '../../../common/presentation/components/message_widget.dart';
import '../../../common/presentation/components/modal_text_field.dart';
import '../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../common/presentation/pages/app_state_sliver.dart';
import '../../domain/entities/data_tenant.dart';
import '../../domain/entities/master_tenant.dart';
import '../components/tenancy_header_delegate.dart';
import '../cubit/master_tenant_cubit.dart';
import '../cubit/temp_master_tenant_cubit.dart';
import '../cubit/transaction_tenant_cubit.dart';
import 'tenancy_page.dart';

class PendataanTenantPage extends StatefulWidget {
  const PendataanTenantPage({Key? key}) : super(key: key);

  @override
  State<PendataanTenantPage> createState() => _PendataanTenantPageState();
}

class _PendataanTenantPageState extends State<PendataanTenantPage>
    with SingleTickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();
  final List<String> aktifItems = ["AKTIF", "TIDAK AKTIF"];

  late AnimationController _messageC;
  List<MasterTenant> _masterTenant = <MasterTenant>[];
  ModalItem? _selectedTenant;
  String? _selectedStatus;
  File? _imageFile;

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

    final tempMaster =
        context.select((TempMasterTenantCubit cubit) => cubit.state);

    final modalItems = tempMaster
        .map((e) =>
            ModalItem(id: e.idTenant, title: e.jenisProduk, subtitle: e.noPsm))
        .toList();

    return MultiBlocListener(
      listeners: [
        BlocListener<MasterTenantCubit, AppState<List<MasterTenant>>>(
            listener: (context, state) {
          state.maybeWhen(
              orElse: () => null,
              data: (data) {
                _masterTenant = data;
                context.read<TransactionTenantCubit>().fetch(store!);
              },
              error: (err) {
                showMessage(context, err.errMessage,
                    type: MessageType.error, controller: _messageC);
                return;
              });
        }),
        BlocListener<TransactionTenantCubit, AppState<List<DataTenant>>>(
            listener: (context, state) {
          if (state.isSuccess) {
            formKey.currentState?.reset();
            context
                .read<TempMasterTenantCubit>()
                .create(_masterTenant, state.data!);
          }
        }),
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverPersistentHeader(
              delegate: TenancyHeaderDelegate(),
            ),
            BlocBuilder<MasterTenantCubit, AppState<List<MasterTenant>>>(
              buildWhen: (prev, next) => prev != next,
              builder: (context, state) {
                formKey.currentState?.reset();
                return AppStateSliver(
                  state: state,
                  onData: (_) {
                    return SliverFillRemaining(
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
                                  ModalTextField<ModalItem>(
                                    label: "Pilih Tenant",
                                    hint: "Pilih tenant yg didata",
                                    items: modalItems,
                                    transitionAnimationController: _messageC,
                                    validator: RequiredValidator(
                                        errorMessage:
                                            "Kolom tenant tidak boleh kosong"),
                                    onSelect: (value) {
                                      _selectedTenant = value;
                                    },
                                  ),
                                  SizedBox(height: 16.h),
                                  DropdownWidget(
                                    label: 'Status Tenant',
                                    hint: "Pilih status tenant",
                                    items: aktifItems,
                                    validator: RequiredValidator(
                                        errorMessage:
                                            "Status tenant tidak boleh kosong"),
                                    onChanged: (value) {
                                      _selectedStatus = value;
                                    },
                                  ),
                                  SizedBox(height: 16.h),
                                  ImagePickerWidget(
                                    label: "Foto Tenant",
                                    size: Size(double.infinity, 320.h),
                                    validator: RequiredValidator(
                                        errorMessage:
                                            "Foto tenant tidak boleh kosong"),
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
                                          jenisProduk: _selectedTenant!.title,
                                          noPsm: _selectedTenant!.subtitle,
                                          status: TenantStatus.registered
                                              .toString(),
                                          isActive: _selectedStatus == "AKTIF",
                                          tenantImage: _imageFile,
                                        );

                                        context
                                            .read<TransactionTenantCubit>()
                                            .add(data);
                                      }
                                    },
                                    label: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                  SizedBox(height: 12.h),
                                  ButtonWidget(
                                    elevation: 0,
                                    color: Colors.white,
                                    side: BorderSide(
                                        width: 1,
                                        color: ColorConstants.backgroundColor),
                                    onPressed: () {
                                      context.pushNamed(
                                          AppRoute.tenantRegister.name);
                                    },
                                    label: Text(
                                      "Pendaftaran Tenant Baru",
                                      style: TextStyle(
                                          color:
                                              ColorConstants.backgroundColor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
