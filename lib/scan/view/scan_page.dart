// This page will be used to scan the card and recognize the characters.
import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/domain/credit_card/credit_card_repository.dart';
import 'package:credit_card_app/scan/scan.dart';
import 'package:credit_card_app/widgets/common/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

// class ScanPage extends StatelessWidget {
//   const ScanPage({
//     super.key,
//     required this.creditCardRepository,
//   });

//   final CreditCardRepository creditCardRepository;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(scanAppBarTitle),
//       ),
//       body: BlocProvider(
//         create: (_) => ScanBloc()..add(ScanInitial()),
//         child: BlocBuilder<ScanBloc, ScanState>(
//           builder: (context, state) {
//             return const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Center(
//                 child: Column(
//                   children: [
//                     Placeholder(),
//                     SizedBox(
//                       width: 200,
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               TakeButton(),
//                               RetakeButton(),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: ButtonSmall(
//                                   routeName: resultRoute,
//                                   text: scanSubmitButtonTitle,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

class ScanPage extends StatefulWidget {
  const ScanPage({
    super.key,
    required this.creditCardRepository,
  });

  final CreditCardRepository creditCardRepository;

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  late List<CameraDescription> cameras;
  CameraController? _cameraController;
  XFile? _imageFile;
  PermissionStatus _cameraPermissionStatus = PermissionStatus.provisional;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
    _requestCameraPermission();
  }

  Future<void> _initializeCamera() async {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();

    if (cameras.isNotEmpty && mounted) {
      final camera = cameras.first;
      _cameraController = CameraController(
        camera,
        ResolutionPreset.high,
        enableAudio: false,
      );
      await _cameraController!.initialize();
      if (!mounted) {
        return;
      }
      setState(() {});
    }
  }

  Future<void> _requestCameraPermission() async {
    final status = await Permission.camera.request();
    setState(() {
      _cameraPermissionStatus = status;
    });
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    super.dispose();
  }

  Future<void> _takePicture() async {
    final imageFile = await _cameraController!.takePicture();
    setState(() {
      _imageFile = imageFile;
    });
  }

  void _retakePicture() {
    setState(() {
      _imageFile = null;
    });
  }

  Future<void> _submitPicture() async {
    // Save the image using _imageFile.path
    // You can use this path to upload or process the image as needed
  }

  @override
  Widget build(BuildContext context) {
    // final creditCardRepository = widget.creditCardRepository;

    return Scaffold(
      appBar: AppBar(
        title: const Text(scanAppBarTitle),
      ),
      body: BlocProvider(
        create: (_) => ScanBloc()..add(ScanInitial()),
        child: BlocBuilder<ScanBloc, ScanState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    Center(
                      child: _cameraController != null &&
                              _cameraController!.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: _cameraController!.value.aspectRatio,
                              child: CameraPreview(_cameraController!),
                            )
                          : const CircularProgressIndicator(),
                    ),
                    SizedBox(
                      width: 200,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // TakeButton(),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 4, 8),
                                  child: ElevatedButton(
                                    style: buttonSmallStyle,
                                    // onPressed: () => Navigator.of(context).pop(),
                                    onPressed: _imageFile == null
                                        ? _takePicture
                                        : null,
                                    child: const Text(scanTakeButtonTitle),
                                  ),
                                ),
                              ),

                              // RetakeButton(),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 0, 8),
                                  child: ElevatedButton(
                                    style: buttonSmallStyle,
                                    // onPressed: () =>
                                    //     Navigator.of(context).pop(),
                                    onPressed: _imageFile == null
                                        ? _retakePicture
                                        : null,
                                    child: const Text(scanRetakeButtonTitle),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 4, 8),
                                  child: ElevatedButton(
                                    style: buttonSmallStyle,
                                    // onPressed: () => Navigator.of(context).pop(),
                                    onPressed: _imageFile == null
                                        ? _submitPicture
                                        : null,
                                    child: const Text(scanSubmitButtonTitle),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Text(
                                'Camera Permission Status: $_cameraPermissionStatus'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class TakeButton extends StatelessWidget {
  const TakeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 4, 8),
        child: ElevatedButton(
          style: buttonSmallStyle,
          onPressed: () => Navigator.of(context).pop(),
          // onPressed: _imageFile == null ? _takePicture : null,
          child: const Text(scanTakeButtonTitle),
        ),
      ),
    );
  }
}

class RetakeButton extends StatelessWidget {
  const RetakeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4, 8, 0, 8),
        child: ElevatedButton(
          style: buttonSmallStyle,
          onPressed: () => Navigator.of(context).pop(),
          child: const Text(scanRetakeButtonTitle),
        ),
      ),
    );
  }
}
