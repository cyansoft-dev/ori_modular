import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '/core/appstate/app_state.dart';
import '/core/constants/color_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../../core/constants/value_constants.dart';
import '../../../../../core/di/injector.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../core/utils/validator.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../../../../common/presentation/components/button_widget.dart';
import '../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../common/presentation/components/image_picker_widget.dart';
import '../../../../common/presentation/components/message_widget.dart';
import '../../../../common/presentation/cubit/location_cubit.dart';
import '../../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../../common/presentation/pages/app_state_sliver.dart';
import '../../../../splash/presentation/cubit/setting_cubit.dart';
import '../../../menu/domain/entities/delivery_master.dart';
import '../../../menu/presentation/cubit/delivery_master_cubit.dart';
import '../../domain/entities/data_collection.dart';
import '../components/data_transition_widget.dart';
import '../components/detail_header_delegate.dart';
import '../cubit/temp_master_collection_cubit.dart';
import '../cubit/transaction_collection_cubit.dart';
import '../cubit/upload_collection_cubit.dart';

class CartCollectionPage extends StatefulWidget {
  const CartCollectionPage({Key? key, required this.type}) : super(key: key);
  final TypeMenu type;

  @override
  State<CartCollectionPage> createState() => _CartCollectionPageState();
}

class _CartCollectionPageState extends State<CartCollectionPage>
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
    final stateMaster = context.watch<DeliveryMasterCubit>().state;

    final dataMaster = context
        .select((TempMasterCollectionCubit cubit) => cubit.state.dataMaster);

    final store =
        context.select((SelectedStoreCubit cubit) => cubit.state.kodetoko);

    final quality =
        context.select((SettingCubit cubit) => cubit.state.data?.imageQuality);

    final transactions = context
        .select((TransactionCollectionCubit cubit) => cubit.state.data?.data);

    final listTransaction = transactions
            ?.where((e) => e.kdtk == store && e.type == widget.type.toString())
            .toList() ??
        <DataCollection>[];

    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<LocationCubit>(
            create: (context) => locator.get<LocationCubit>()..start(),
          ),
        ],
        child: Builder(builder: (context) {
          return MultiBlocListener(
            listeners: [
              BlocListener<UploadCollectionCubit, AppState<BaseResponse>>(
                listener: (context, state) async {
                  if (state.isError) {
                    showMessage(context,
                        state.error?.errMessage ?? "Upload data gagal.",
                        controller: _messageC, type: MessageType.error);
                    return;
                  }

                  if (state.isSuccess) {
                    if (state.data?.code == 200) {
                      return showMessage(
                        context,
                        state.data?.message ?? "Upload data berhasil.",
                        controller: _messageC,
                        type: MessageType.success,
                        onClose: () {
                          context
                            ..pop()
                            ..read<TransactionCollectionCubit>().truncate()
                            ..read<DeliveryMasterCubit>().getData(store!);
                        },
                      );
                    } else {
                      return showDialogMessage(
                        context,
                        controller: _messageC,
                        state.data?.message ?? "Upload data gagal.",
                        cancelLabel: "Batal",
                        processLabel: "Coba lagi",
                        onProcess: () {
                          context
                              .read<UploadCollectionCubit>()
                              .upload(listTransaction);
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
                  AppStateSliver<DeliveryMaster>(
                    state: stateMaster,
                    onData: (master) {
                      if (listTransaction.isEmpty) {
                        return SliverFillRemaining(
                          hasScrollBody: false,
                          child: Center(
                              child: Text(
                            "Data transaksi ${widget.type.type.toLowerCase()} kosong",
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
                            final nominal =
                                listTransaction[index]
                                    .details
                                    ?.fold(
                                        0.0,
                                        (prev, next) =>
                                            prev +
                                            (next.nominal ?? 0.0).toDouble());
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
                                      "TGL SALES : ${DateFormat("dd-MM-yyyy").format(listTransaction[index].tanggal!)}",
                                      style: GoogleFonts.nunito(
                                        color: ColorConstants.fontColor,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    subtitle: Text(
                                      listTransaction[index].idDelivery!,
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
                                          const Text("• Jenis pengiriman"),
                                          const Spacer(),
                                          Text(
                                            listTransaction[index].delivery!,
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5.h),
                                      Flex(
                                        direction: Axis.horizontal,
                                        children: [
                                          const Text(
                                              "• Setoran shift yang dikirim"),
                                          const Spacer(),
                                          Text(listTransaction[index].shift ??
                                              "-")
                                        ],
                                      ),
                                      SizedBox(height: 5.h),
                                      Flex(
                                        direction: Axis.horizontal,
                                        children: [
                                          const Text("• Jumlah lampiran"),
                                          const Spacer(),
                                          Text(
                                              "${listTransaction[index].jumlDetail ?? 0}")
                                        ],
                                      ),
                                      SizedBox(height: 5.h),
                                      Flex(
                                        direction: Axis.horizontal,
                                        children: [
                                          const Text("• Total setoran"),
                                          const Spacer(),
                                          Text(nominal.toCurrencyFormat)
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
                                              debugPrint(
                                                  "Data validation : $listTransaction");
                                              context
                                                  .read<
                                                      TransactionCollectionCubit>()
                                                  .delete(listTransaction[index]
                                                      .id!);
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
                          childCount: listTransaction.length,
                        ),
                      );
                    },
                  ),

                  /// Show button if data is not empty
                  if (listTransaction.isNotEmpty && stateMaster.isSuccess)
                    SliverPadding(
                      padding: EdgeInsets.fromLTRB(20.w, 10.h, 20.w, 20.h),
                      sliver: SliverToBoxAdapter(
                        child: BlocBuilder<UploadCollectionCubit,
                            AppState<BaseResponse>>(
                          builder: (context, state) {
                            return ButtonWidget(
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

                                if (widget.type == TypeMenu.kodel) {
                                  await showValidateModal(
                                    context,
                                    dataMaster,
                                    listTransaction,
                                    quality,
                                  );
                                } else {
                                  await showUploadModal(
                                    context,
                                    dataMaster,
                                    listTransaction,
                                  );
                                }
                              },
                              label: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    widget.type == TypeMenu.kodel
                                        ? Icons.verified_rounded
                                        : Icons.cloud_upload_rounded,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    widget.type == TypeMenu.kodel
                                        ? "Validasi"
                                        : "Upload",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            );
                          },
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

  Future<void> showUploadModal(BuildContext context, DataMaster? master,
      List<DataCollection> transactions) async {
    final pending = datesPending(master);

    if (pending.isNotEmpty) {
      return showMessage(context,
          "Ada data sales yang masih belum  diinput\n${pending.toString()}",
          controller: _messageC, type: MessageType.error, onClose: () {
        context.pop();
      });
    }

    return showDialogMessage(
      context,
      "Apakah data yang akan diupload sudah benar ?",
      controller: _messageC,
      type: MessageType.warning,
      processLabel: "Ya",
      cancelLabel: "Tidak",
      onProcess: () {
        final req = transactions
            .map((e) => e.copyWith(
                  latitude: _position!.latitude,
                  longitude: _position!.longitude,
                ))
            .toList();

        context.read<UploadCollectionCubit>().upload(req);
      },
    );
  }

  Future<void> showValidateModal(BuildContext context, DataMaster? master,
      List<DataCollection> transactions, int? imageQuality) async {
    File? image;

    final pending = datesPending(master);
    if (pending.isNotEmpty) {
      return showMessage(
        context,
        "Ada data sales yang masih belum  diinput\n${pending.toString()}",
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
                          label: "Photo Mobil",
                          validator: RequiredValidator(
                              errorMessage: "Foto tidak boleh kosong"),
                          onCapture: (file) {
                            image = file;
                          },
                        ),
                      ),
                      // SizedBox(height: 4.h),
                      // Text(
                      //   "Note: Pastikan foto kode mobil DC / Nopol kendaraan terlihat jelas",
                      //   style: TextStyle(
                      //     fontStyle: FontStyle.italic,
                      //     fontSize: 12.sp,
                      //   ),
                      // ),
                      SizedBox(height: 24.h),
                      ButtonWidget(
                          onPressed: () {
                            if (_keyForm.currentState!.validate()) {
                              final req = transactions
                                  .map((e) => e.copyWith(
                                        pathImage: image?.path,
                                        latitude: _position!.latitude,
                                        longitude: _position!.longitude,
                                      ))
                                  .toList();

                              context.read<UploadCollectionCubit>().upload(req);
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
              top: 10.w,
              right: 10.w,
              child: IconButton(
                padding: EdgeInsets.zero,
                splashRadius: 30.r,
                icon: Icon(Icons.close_rounded, size: 42.sp),
                onPressed: () => Navigator.pop(context),
              ),
            ),
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

  List<String> datesPending(DataMaster? master) {
    if (master == null) return [];

    final listMaster = [
      ...?master.salesDate?.where((e) => !e.tanggal!.isSame(DateTime.now()))
    ];

    if (listMaster.isNotEmpty) {
      return listMaster.map((e) => dateFormat.format(e.tanggal!)).toList();
    }

    return [];
  }
}
