import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../domain/entities/detail_tracking.dart';
import 'tracking_label.dart';

class TrackingTimeline extends StatelessWidget {
  const TrackingTimeline(
      {Key? key,
      required this.index,
      required this.length,
      required this.isFirst,
      required this.isLast,
      required this.tracking})
      : super(key: key);
  final int index;
  final int length;
  final bool isFirst;
  final bool isLast;
  final DetailDataTracking tracking;

  @override
  Widget build(BuildContext context) {
    return _trackingTimeline();
  }

  Widget _trackingTimeline() {
    if (length == 1) {
      return TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.1,
        isLast: true,
        indicatorStyle: IndicatorStyle(
          indicatorXY: 0.2,
          drawGap: true,
          width: 14.w,
          height: 14.w,
          color: ColorConstants.trackingColor,
        ),
        endChild: TrackingLabel(
          date: tracking.updateAt!,
          title: '${tracking.status}',
          message: '${tracking.keterangan}',
          pic: tracking.pic ?? "-",
          disabled: !isFirst,
        ),
        beforeLineStyle: const LineStyle(
          thickness: 2,
          color: Colors.transparent,
        ),
      );
    }

    if (isLast) {
      return TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.1,
        isLast: true,
        indicatorStyle: IndicatorStyle(
          indicatorXY: 0.2,
          drawGap: true,
          width: 14.w,
          height: 14.w,
          color: Colors.grey.shade300,
          // padding: EdgeInsets.all(6.w),
        ),
        endChild: TrackingLabel(
          date: tracking.updateAt!,
          title: '${tracking.status}',
          message: '${tracking.keterangan}',
          pic: tracking.pic ?? "-",
          disabled: !isFirst,
        ),
        beforeLineStyle: LineStyle(
          thickness: 2,
          color:
              length == 2 ? ColorConstants.trackingColor : Colors.grey.shade300,
        ),
      );
    }

    if (isFirst) {
      return TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.1,
        isFirst: true,
        indicatorStyle: IndicatorStyle(
          indicatorXY: 0.2,
          drawGap: true,
          width: 14.w,
          height: 14.w,
          color: ColorConstants.trackingColor,
        ),
        endChild: TrackingLabel(
          date: tracking.updateAt!,
          title: '${tracking.status}',
          message: '${tracking.keterangan}',
          pic: tracking.pic ?? "-",
          disabled: !isFirst,
        ),
        beforeLineStyle: LineStyle(
          thickness: 2,
          color: ColorConstants.trackingColor,
        ),
      );
    }

    if (index == 1) {
      return TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.1,
        indicatorStyle: IndicatorStyle(
          indicatorXY: 0.2,
          drawGap: true,
          width: 14.w,
          height: 14.w,
          color: Colors.grey.shade300,
        ),
        endChild: TrackingLabel(
          date: tracking.updateAt!,
          title: '${tracking.status}',
          message: '${tracking.keterangan}',
          pic: tracking.pic ?? "-",
          disabled: !isFirst,
        ),
        beforeLineStyle: LineStyle(
          thickness: 2,
          color: ColorConstants.trackingColor,
        ),
        afterLineStyle: LineStyle(
          thickness: 2,
          color: Colors.grey.shade300,
        ),
      );
    }

    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.1,
      indicatorStyle: IndicatorStyle(
        indicatorXY: 0.2,
        drawGap: true,
        width: 14.w,
        height: 14.w,
        color: Colors.grey.shade300,
        // padding: EdgeInsets.all(6.w),
      ),
      endChild: TrackingLabel(
        date: tracking.updateAt!,
        title: '${tracking.status}',
        message: '${tracking.keterangan}',
        pic: tracking.pic ?? "-",
        disabled: !isFirst,
      ),
      beforeLineStyle: LineStyle(
        thickness: 2,
        color: Colors.grey.shade300,
      ),
      afterLineStyle: LineStyle(
        thickness: 2,
        color: Colors.grey.shade300,
      ),
    );
  }
}
