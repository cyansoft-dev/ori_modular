import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../domain/entities/detail_tracking.dart';
import '../../domain/entities/tracking.dart';

class TrackingProgress extends StatefulWidget {
  const TrackingProgress({Key? key, this.details}) : super(key: key);
  final List<DetailDataTracking>? details;

  @override
  State<TrackingProgress> createState() => _TrackingProgressState();
}

class _TrackingProgressState extends State<TrackingProgress> {
  List<TrackingStatus> listStatus = const [
    TrackingStatus.sending,
    TrackingStatus.onProcess,
    TrackingStatus.completed
  ];

  late int step;

  @override
  void initState() {
    step = [...?widget.details?.map((e) => e.status!.index)].reduce(max);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildProgress();
  }

  Widget _buildProgress() {
    if (widget.details == null) {
      return const SizedBox.shrink();
    }

    return Material(
      elevation: 1,
      shadowColor: ColorConstants.shadowColor,
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.w),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 180.h),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: listStatus.map((e) {
              final index = listStatus.indexOf(e);
              final status = e;
              final isFirst = index == 0;
              final isLast = index == listStatus.length - 1;

              return Flexible(
                child: TimelineTile(
                  alignment: TimelineAlign.center,
                  axis: TimelineAxis.horizontal,
                  isFirst: isFirst,
                  isLast: isLast,
                  startChild: _StartChildDelivery(status: status, step: step),
                  endChild: _EndChildDelivery(status: status, step: step),
                  indicatorStyle: IndicatorStyle(
                      width: 26.w,
                      height: 26.w,
                      indicator:
                          _IndicatorDelivery(status: status, step: step)),
                  beforeLineStyle: LineStyle(
                    thickness: 2,
                    color: beforeLineColor(status),
                  ),
                  afterLineStyle: LineStyle(
                    thickness: 2,
                    color: afterLineColor(status),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  Color beforeLineColor(TrackingStatus status) {
    if (status.index <= step) {
      return ColorConstants.trackingColor;
    }
    return const Color(0xFFDADADA);
  }

  Color afterLineColor(TrackingStatus status) {
    if (status.index < step) {
      return ColorConstants.trackingColor;
    }
    return const Color(0xFFDADADA);
  }
}

class _StartChildDelivery extends StatelessWidget {
  const _StartChildDelivery(
      {Key? key, required this.status, required this.step})
      : super(key: key);
  final TrackingStatus status;
  final int step;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: _icon(),
    );
  }

  Widget _icon() {
    if (status == TrackingStatus.sending) {
      return Icon(CupertinoIcons.paperplane,
          size: 36.sp,
          color: status.index <= step
              ? ColorConstants.trackingColor
              : const Color(0xFFDADADA));
    }

    if (status == TrackingStatus.completed) {
      return Icon(CupertinoIcons.checkmark_seal,
          size: 36.sp,
          color: status.index <= step
              ? ColorConstants.trackingColor
              : const Color(0xFFDADADA));
    }

    return Icon(CupertinoIcons.doc_text_search,
        size: 36.sp,
        color: status.index <= step
            ? ColorConstants.trackingColor
            : const Color(0xFFDADADA));
  }
}

class _EndChildDelivery extends StatelessWidget {
  const _EndChildDelivery({
    required this.status,
    required this.step,
  });

  final TrackingStatus status;
  final int step;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 0.3.sw),
      child: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: Text(
          status.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.sp,
            color: status.index <= step
                ? ColorConstants.trackingColor
                : const Color(0xFFDADADA),
          ),
        ),
      ),
    );
  }
}

class _IndicatorDelivery extends StatelessWidget {
  const _IndicatorDelivery({Key? key, required this.status, required this.step})
      : super(key: key);
  final TrackingStatus status;
  final int step;

  @override
  Widget build(BuildContext context) {
    if (status == TrackingStatus.none) {
      return Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: ColorConstants.iconColor),
        child: Center(
          child: Icon(
            CupertinoIcons.xmark,
            size: 20.sp,
            color: Colors.white,
          ),
        ),
      );
    }

    if (status.index <= step) {
      return Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: ColorConstants.trackingColor),
        child: Center(
          child: Icon(
            CupertinoIcons.checkmark_alt,
            size: 20.sp,
            color: Colors.white,
          ),
        ),
      );
    }

    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFDADADA),
      ),
    );
  }
}
