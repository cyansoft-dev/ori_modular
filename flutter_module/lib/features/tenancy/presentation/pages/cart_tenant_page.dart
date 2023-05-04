import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../domain/entities/data_tenant.dart';
import '../../domain/entities/master_tenant.dart';
import '../cubit/upload_tenant_cubit.dart';

import '../../../../core/utils/validator.dart';
import '../../../collection/transaction/presentation/components/detail_header_delegate.dart';
import '../../../common/domain/entities/base_response.dart';
import '../../../common/presentation/components/button_widget.dart';
import '../../../common/presentation/components/dialog_message_widget.dart';
import '../../../common/presentation/components/image_picker_widget.dart';
import '../../../common/presentation/components/message_widget.dart';
import '../../../common/presentation/cubit/location_cubit.dart';
import '../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../common/presentation/pages/app_state_sliver.dart';
import '../../../splash/presentation/cubit/setting_cubit.dart';
import '../cubit/master_tenant_cubit.dart';
import '../cubit/temp_master_tenant_cubit.dart';
import '../cubit/transaction_tenant_cubit.dart';
import '/core/appstate/app_state.dart';
import '/core/constants/color_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../../core/constants/value_constants.dart';
import '../../../../../core/di/injector.dart';

class CartTenantPage extends StatefulWidget {
  const CartTenantPage({Key? key}) : super(key: key);

  @override
  State<CartTenantPage> createState() => _CartTenantPagePageState();
}

class _CartTenantPagePageState extends State<CartTenantPage>
    with SingleTickerProviderStateMixin {
  final _keyForm = GlobalKey<FormState>();
  final dateFormat = DateFormat("dd-MM-yyyy");
  late AnimationController _messageC;
  Position? _position;

  @override
  void initState() {
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
    super.initState();
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

    final quality =
        context.select((SettingCubit cubit) => cubit.state.data?.imageQuality);

    final transactions =
        context.select((TransactionTenantCubit cubit) => cubit.state.data) ??
            <DataTenant>[];

    final stateMaster = context.watch<MasterTenantCubit>().state;

    final tempMaster =
        context.select((TempMasterTenantCubit cubit) => cubit.state);

    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<LocationCubit>(
            create: (context) => locator.get<LocationCubit>()..start(),
          ),
        ],
        child: Builder(builder: (context) {
          debugPrint("rebuild cart tenant page");
          return MultiBlocListener(
            listeners: [
              BlocListener<UploadTenantCubit, AppState<BaseResponse>>(
                listener: (context, state) async {
                  if (state.isError) {
                    showMessage(context,
                        state.error?.errMessage ?? "Upload data gagal.",
                        controller: _messageC, type: MessageType.error);
                    return;
                  }

                  if (state.isSuccess) {
                    if (state.data?.code == 200) {
                      context
                        ..read<TransactionTenantCubit>().truncate()
                        ..read<MasterTenantCubit>().get(store!);

                      return showMessage(context,
                          state.data?.message ?? "Upload data berhasil.",
                          controller: _messageC, type: MessageType.success);
                    } else {
                      return showDialogMessage(
                        context,
                        controller: _messageC,
                        state.data?.message ?? "Upload data gagal.",
                        cancelLabel: "Batal",
                        processLabel: "Coba lagi",
                        onProcess: () {
                          context
                              .read<UploadTenantCubit>()
                              .upload(transactions);
                        },
                      );
                    }
                  }
                },
              ),
              BlocListener<LocationCubit, AppState<Position>>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () => null,
                    data: (position) {
                      if (_position == null) {
                        context.read<LocationCubit>().streamLocation();
                      }
                      _position = position;
                    },
                    error: (error) {
                      showMessage(
                        context,
                        error.errMessage,
                        controller: _messageC,
                        type: MessageType.error,
                      );
                      _position = null;
                    },
                  );
                },
              ),
            ],
            child: RefreshIndicator(
              onRefresh: () async {
                if (_position == null) {
                  context.read<LocationCubit>().start();
                }
              },
              child: CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: DetailHeaderDelegate(),
                  ),
                  AppStateSliver<List<MasterTenant>>(
                    state: stateMaster,
                    onData: (_) {
                      if (transactions.isEmpty) {
                        return SliverFillRemaining(
                          hasScrollBody: false,
                          child: Center(
                              child: Text(
                            "Data pendataan tenant kosong",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          )),
                        );
                      }

                      return SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: 20.w,
                                  right: 20.w,
                                  top: 5.h,
                                  bottom: 5.h),
                              child: Material(
                                elevation: 1,
                                color: Colors.white,
                                shadowColor: ColorConstants.shadowColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(10.w)),
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                      dividerColor: Colors.transparent),
                                  child: ExpansionTile(
                                    title: Text(
                                      transactions[index].jenisProduk ?? "",
                                      style: GoogleFonts.nunito(
                                          textStyle: TextStyle(
                                        color: ColorConstants.fontColor,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      )),
                                    ),
                                    subtitle: Text(
                                      transactions[index].noPsm ?? "",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    iconColor: ColorConstants.fontColor,
                                    collapsedIconColor:
                                        ColorConstants.fontColor,
                                    initiallyExpanded: true,
                                    childrenPadding: EdgeInsets.fromLTRB(
                                        20.w, 5.h, 20.w, 20.w),
                                    children: [
                                      Flex(
                                        direction: Axis.horizontal,
                                        children: [
                                          const Text("• Status Tenant"),
                                          const Spacer(),
                                          Text(
                                            transactions[index].status!,
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5.h),
                                      Flex(
                                        direction: Axis.horizontal,
                                        children: [
                                          const Text("• Tenant Aktif"),
                                          const Spacer(),
                                          Text(transactions[index].isActive!
                                              ? "AKTIF"
                                              : "NON AKTIF")
                                        ],
                                      ),
                                      SizedBox(height: 20.h),
                                      Flex(
                                        direction: Axis.horizontal,
                                        children: [
                                          const Spacer(),
                                          ButtonWidget(
                                            size: Size(120.w, 46.h),
                                            color: ColorConstants.trashColor,
                                            onPressed: () {
                                              context
                                                  .read<
                                                      TransactionTenantCubit>()
                                                  .delete(
                                                      transactions[index].id!);
                                            },
                                            label: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  CupertinoIcons.trash,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(width: 5.w),
                                                const Text(
                                                  "Hapus",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          childCount: transactions.length,
                        ),
                      );
                    },
                  ),

                  /// Show button if data is not empty
                  if (stateMaster.isSuccess && transactions.isNotEmpty)
                    SliverPadding(
                      padding: EdgeInsets.fromLTRB(20.w, 10.h, 20.w, 20.h),
                      sliver: SliverToBoxAdapter(
                        child: BlocBuilder<UploadTenantCubit,
                            AppState<BaseResponse>>(
                          builder: (context, state) => ButtonWidget(
                              elevation: 1,
                              isLoading: state.isLoading,
                              onPressed: () async {
                                if (_position == null) {
                                  return showMessage(
                                    context,
                                    "Lokasi anda tidak terdeteksi, aktifkan GPS & refresh halaman.",
                                    controller: _messageC,
                                    type: MessageType.error,
                                  );
                                }

                                showValidateModal(
                                  context,
                                  transactions: transactions,
                                  masters: tempMaster,
                                  imageQuality: quality,
                                );
                              },
                              label: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.cloud_upload_rounded),
                                  SizedBox(width: 10.w),
                                  const Text("Upload"),
                                ],
                              )),
                        ),
                      ),
                    )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Future<void> showValidateModal(
    BuildContext context, {
    required List<DataTenant> transactions,
    List<MasterTenant>? masters,
    int? imageQuality,
  }) async {
    File? image;

    final completed = isCompleted(masters);
    if (!completed) {
      return showMessage(
        context,
        "Ada tenant yang masih belum di lakukan pendataan.",
        controller: _messageC,
        type: MessageType.error,
      );
    }

    return showModalBottomSheet(
      context: context,
      transitionAnimationController: _messageC,
      builder: (context) {
        return Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.w, 80.h, 20.w, 40.h),
                child: Form(
                  key: _keyForm,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ImagePickerWidget(
                          initialImage: image,
                          quality: imageQuality,
                          label: "Photo Toko",
                          validator: RequiredValidator(
                              errorMessage: "Foto tidak boleh kosong"),
                          onCapture: (file) {
                            image = file;
                          },
                        ),
                      ),
                      SizedBox(height: 24.h),
                      ButtonWidget(
                          onPressed: () {
                            if (_keyForm.currentState!.validate()) {
                              final req = transactions
                                  .map((e) => e.copyWith(
                                      storeImage: image,
                                      latitude: _position?.latitude,
                                      longitude: _position?.longitude))
                                  .toList();

                              context
                                ..read<TransactionTenantCubit>().addMany(req)
                                ..read<UploadTenantCubit>().upload(req);
                              Navigator.pop(context);
                            }
                          },
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.cloud_upload),
                              SizedBox(width: 10.w),
                              const Text("Upload"),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20.w,
              right: 20.w,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.cancel,
                  size: 30.sp,
                ),
              ),
            )
          ],
        );
      },
      elevation: 6,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.w),
          topRight: Radius.circular(20.w),
        ),
      ),
      constraints: BoxConstraints(
        maxHeight: (1.sh - 240.h),
      ),
    );
  }

  bool isCompleted(List<MasterTenant>? master) {
    if (master == null) return false;

    if (master.isNotEmpty) return false;

    return true;
  }
}
