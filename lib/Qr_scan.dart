// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// class QrScanPage extends StatefulWidget {
//   @override
//   State<QrScanPage> createState() => _QrScanPageState();
// }

// class _QrScanPageState extends State<QrScanPage> {
//   final qrkey = GlobalKey(debugLabel: 'QR');

//   Barcode? barcode;
//   QRViewController? controller;

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     controller?.dispose();
//     super.dispose();
//   }

//   @override
//   Future<void> reassemble() async {
//     // TODO: implement reassemble
//     super.reassemble();

//     if (Platform.isAndroid) {
//       await controller!.pauseCamera();
//     }
//     controller!.resumeCamera();
//   }

//   @override
//   Widget build(BuildContext context) => SafeArea(
//         child: Scaffold(
//           body: Stack(
//             alignment: Alignment.center,
//             children: [
//               buildQrView(context),
//               Positioned(bottom: 10, child: buildResult()),
//               Positioned(top: 10, child: buildControlButton()),
//             ],
//           ),
//         ),
//       );

//   Widget buildQrView(BuildContext context) => QRView(
//         key: qrkey,
//         onQRViewCreated: onQRViewCreated,
//         overlay: QrScannerOverlayShape(
//           borderColor: Colors.greenAccent,
//           borderRadius: 10,
//           borderLength: 20,
//           borderWidth: 10,
//           cutOutSize: MediaQuery.of(context).size.width * 0.8,
//         ),
//       );

//   void onQRViewCreated(QRViewController controller) {
//     setState(() => this.controller = controller);

//     controller.scannedDataStream
//         .listen((barcode) => setState(() => this.barcode = barcode));
//   }

//   Widget buildResult() => Container(
//         padding: EdgeInsets.all(12),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8), color: Colors.white24),
//         child: Text(
//           barcode != null ? 'Result : ${barcode!.code}' : 'Scan a code',
//           maxLines: 3,
//         ),
//       );

//   Widget buildControlButton() => Container(
//         padding: EdgeInsets.symmetric(horizontal: 16),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           color: Colors.white24,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             IconButton(
//               onPressed: () async {
//                 await controller?.toggleFlash();
//                 setState(() {});
//               },
//               icon: FutureBuilder(
//                   future: controller?.getFlashStatus(),
//                   builder: (context, snapshot) {
//                     if (snapshot.data != null) {
//                       return Icon(snapshot.data!
//                           ? Icons.flash_on_outlined
//                           : Icons.flash_off_outlined);
//                     } else {
//                       return Container();
//                     }
//                   }),
//             ),
//             IconButton(
//                 onPressed: () async {
//                   await controller?.flipCamera();
//                   setState(() {});
//                 },
//                 icon: FutureBuilder(
//                   future: controller?.getCameraInfo(),
//                   builder: (context, snapshot) {
//                     if (snapshot.data != null) {
//                       return Icon(Icons.switch_camera_outlined);
//                     } else {
//                       return Container();
//                     }
//                   },
//                 )),
//           ],
//         ),
//       );
// }
