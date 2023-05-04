import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/constants/color_constants.dart';
import '../../../../core/constants/value_constants.dart';
import '../../../../core/di/injector.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../common/presentation/components/message_widget.dart';
import '../../../common/presentation/pages/app_state_sliver.dart';
import '../../domain/entities/message.dart';
import '../components/home_header.dart';
import '../cubit/local_message_cubit.dart';
import '../cubit/read_message_cubit.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<ReadMessageCubit>(
        create: (context) => locator.get<ReadMessageCubit>(),
        child: Builder(builder: (context) {
          return CustomScrollView(
            slivers: [
              const SliverPersistentHeader(
                pinned: true,
                delegate: HomeHeader(
                  title: "Notification",
                  subtitle: "View notification history app",
                  showBackButton: true,
                ),
              ),
              BlocBuilder<LocalMessageCubit, AppState<List<Message>>>(
                  builder: (context, state) {
                return AppStateSliver(
                  state: state,
                  onData: (messages) {
                    if (messages.isEmpty) {
                      return SliverFillRemaining(
                        hasScrollBody: false,
                        child: Center(
                          child: Text(
                            "Pesan notifikasi kosong.",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      );
                    }

                    return SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                      final id = messages[index].id;
                      final title =
                          messages[index].message?.notification?.title;
                      final body = messages[index].message?.notification?.body;
                      final isRead = messages[index].isRead;

                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 5.h),
                        child: Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(
                              ValueConstants.borderRadius),
                          color: Colors.white,
                          shadowColor: ColorConstants.shadowColor,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(
                                ValueConstants.borderRadius),
                            onTap: () {
                              showPopupMessage(
                                context,
                                title: title,
                                body: body,
                                height: 400.h,
                              ).then((_) {
                                if (id != null && !isRead) {
                                  context.read<ReadMessageCubit>().read(id);
                                }
                              });
                            },
                            child: Padding(
                              // height: 110.h,
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
                                    child: Icon(
                                      messages[index].isRead
                                          ? Iconsax.message_text1
                                          : Iconsax.message_notif,
                                      color: ColorConstants.iconColor,
                                      size: 36.sp,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Flexible(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "$title",
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: messages[index].isRead
                                                ? FontWeight.w500
                                                : FontWeight.w900,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        SizedBox(width: 4.h),
                                        Text(
                                          "$body",
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
                        ),
                      );
                    }, childCount: messages.length));
                  },
                );
              })
            ],
          );
        }),
      ),
    );
  }
}
