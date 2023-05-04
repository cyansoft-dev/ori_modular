import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/constants/color_constants.dart';
import '../../../../core/constants/value_constants.dart';
import '../../../../core/di/injector.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../common/presentation/components/dialog_message_widget.dart';
import '../../../common/presentation/pages/app_state_sliver.dart';
import '../../domain/entities/faq.dart';
import '../components/home_header.dart';
import '../components/show_message.dart';
import '../cubit/faq_cubit.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> with SingleTickerProviderStateMixin {
  late AnimationController _messageC;

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
    return Scaffold(
      body: BlocProvider<FaqCubit>(
        create: (context) => locator.get<FaqCubit>()..getFaq(),
        child: Builder(
          builder: (context) {
            return CustomScrollView(
              slivers: [
                const SliverPersistentHeader(
                  pinned: true,
                  delegate: HomeHeader(
                      title: "Pusat Bantuan",
                      subtitle: "Informasi terkait kendala aplikasi",
                      showBackButton: true),
                ),
                BlocConsumer<FaqCubit, AppState<List<FaqData>>>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () => null,
                      error: (failure) {
                        showDialogMessage(
                          context,
                          failure.errMessage,
                          controller: _messageC,
                          processLabel: "Reload",
                          cancelLabel: "Later",
                          onProcess: () => context.read<FaqCubit>().getFaq(),
                        );
                      },
                    );
                  },
                  builder: (context, state) {
                    return AppStateSliver(
                      state: state,
                      onData: (faqData) {
                        return SliverPadding(
                          padding: EdgeInsets.all(20.w),
                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.h),
                                  child: Material(
                                    elevation: 1,
                                    borderRadius: BorderRadius.circular(10.w),
                                    color: Colors.white,
                                    shadowColor: ColorConstants.shadowColor,
                                    child: ListTile(
                                      horizontalTitleGap: 0,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10.h, horizontal: 15.w),
                                      title: Text("${faqData[index].question}"),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 20.sp,
                                      ),
                                      onTap: () {
                                        showQuestionMessage(
                                          context,
                                          controller: _messageC,
                                          question: faqData[index].question,
                                          answer: faqData[index].answer,
                                        );
                                      },
                                    ),
                                  ),
                                );
                              },
                              childCount: faqData.length,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
