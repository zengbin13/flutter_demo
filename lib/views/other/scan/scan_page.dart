import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:vibration/vibration.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  List<String> barcodeList = [];

  void addBarcode(String barcode) {
    if (barcodeList.contains(barcode)) return;
    setState(() {
      barcodeList.add(barcode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ElevatedButton(onPressed: onPressed, child: child)
          Expanded(
            child: MobileScannerView(
              onChange: addBarcode,
            ),
          ),
          Expanded(
            child: Wrap(
              children: barcodeList
                  .map(
                    (item) => Chip(
                      label: Text(item),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileScannerView extends StatefulWidget {
  const MobileScannerView({super.key, required this.onChange});

  final ValueChanged<String> onChange;

  @override
  State<MobileScannerView> createState() => _MobileScannerViewState();
}

class _MobileScannerViewState extends State<MobileScannerView> {
  final MobileScannerController _cameraController = MobileScannerController();
  // String _barcodeStr = '';

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MobileScanner(
          fit: BoxFit.cover,
          controller: _cameraController,
          onDetect: (capture) {
            final List<Barcode> barcodes = capture.barcodes;
            for (final barcode in barcodes) {
              // debugPrint('Barcode found! ${barcode.rawValue}');
              if (barcode.rawValue != null) {
                final barcodeStr = '${barcode.rawValue}';
                widget.onChange(barcodeStr);
              }
            }
          },
        ),
      ],
    );
  }
}
