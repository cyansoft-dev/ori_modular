import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'point_overlay.dart';

class BarcodeScanner extends StatefulWidget {
  const BarcodeScanner._({Key? key}) : super(key: key);

  static Future<String?> open(
    BuildContext context, {
    MaterialPageRoute<String?> Function(Widget cameraView)? pageRouteBuilder,
  }) {
    Widget scannerPage = const BarcodeScanner._();
    return Navigator.of(context, rootNavigator: true).push<String?>(
      pageRouteBuilder?.call(scannerPage) ??
          MaterialPageRoute<String?>(builder: (_) => scannerPage),
    );
  }

  @override
  State<BarcodeScanner> createState() => _BarcodeScannerState();
}

class _BarcodeScannerState extends State<BarcodeScanner>
    with SingleTickerProviderStateMixin {
  late MobileScannerController _controller;
  MobileScannerArguments? arguments;
  final ValueNotifier<List<Offset>> _pointNotifier = ValueNotifier([]);
  final BoxFit _boxFit = BoxFit.cover;

  @override
  void initState() {
    super.initState();
    _controller = MobileScannerController(
      facing: CameraFacing.back,
      torchEnabled: false,
      detectionTimeoutMs: 1500,
      returnImage: true,
      formats: [BarcodeFormat.qrCode],
    );
  }

  @override
  void dispose() {
    _pointNotifier.dispose();
    _controller.dispose();
    super.dispose();
  }

  void onDetect(BarcodeCapture capture, {required BoxConstraints constraints}) {
    if (arguments == null) return;
    final size = constraints.biggest;

    for (var barcode in capture.barcodes) {
      final adjustedSize = applyBoxFit(_boxFit, arguments!.size, size);

      double verticalPadding = size.height - adjustedSize.destination.height;
      double horizontalPadding = size.width - adjustedSize.destination.width;
      if (verticalPadding > 0) {
        verticalPadding = verticalPadding / 2;
      } else {
        verticalPadding = 0;
      }

      if (horizontalPadding > 0) {
        horizontalPadding = horizontalPadding / 2;
      } else {
        horizontalPadding = 0;
      }

      final ratioWidth =
          (Platform.isIOS ? capture.width! : arguments!.size.width) /
              adjustedSize.destination.width;

      final ratioHeight =
          (Platform.isIOS ? capture.height! : arguments!.size.height) /
              adjustedSize.destination.height;

      List<Offset> adjustedOffset = [];
      for (final offset in barcode.corners!) {
        adjustedOffset.add(
          Offset(
            offset.dx / ratioWidth + horizontalPadding,
            offset.dy / ratioHeight + verticalPadding,
          ),
        );
      }

      _pointNotifier.value = adjustedOffset;
    }
  }

  @override
  Widget build(BuildContext context) {
    /*Rect scanWindow = Rect.fromCenter(
        center: MediaQuery.of(context).size.center(Offset.zero),
        width: 200.w,
        height: 200.w);*/

    return Scaffold(
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return MobileScanner(
                fit: _boxFit,
                controller: _controller,
                onDetect: (capture) {
                  onDetect(capture, constraints: constraints);
                  final code = capture.barcodes.first.rawValue;
                  if (code != null) {
                    Navigator.pop(context, code);
                  }
                },
                onScannerStarted: (args) {
                  setState(() {
                    arguments = args;
                  });
                },
              );
            },
          ),

          ValueListenableBuilder(
              valueListenable: _pointNotifier,
              builder: (context, points, child) {
                if (points.isEmpty) {
                  return Container();
                }

                return CustomPaint(painter: PointOverlay(points));
              })
          /*if (barcode != null &&
              barcode?.corners != null &&
              arguments != null)
            CustomPaint(
              painter: BarcodeOverlay(
                barcode: barcode!,
                arguments: arguments!,
                boxFit: BoxFit.contain,
                capture: capture!,
              ),
            ),*/
          /*CustomPaint(
            painter: ScannerOverlay(scanWindow),
          ),*/
          // if (widget.showOverlay)
          //   QRScannerOverlay(
          //       scanArea: Size.square(250.w),
          //       overlayColour: Colors.black.withOpacity(0.5)),
        ],
      ),
    );
  }
}
