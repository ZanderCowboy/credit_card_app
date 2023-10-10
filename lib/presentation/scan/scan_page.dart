import 'package:camera/camera.dart';
import 'package:credit_card_app/application/scan/bloc/scan_bloc.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/widgets/common/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(scanAppBarTitle),
      ),
      body: BlocProvider(
        create: (_) => coreSl<ScanBloc>(),
        child: _ScanPage(),
      ),
    );
  }
}

class _ScanPage extends StatelessWidget {
  _ScanPage();

  late final List<CameraDescription> cameras;
  late final CameraController? _cameraController;
  late final XFile? _imageFile;
  late PermissionStatus _cameraPermissionStatus = PermissionStatus.provisional;

  void initState() {
    _initializeCamera();
    _requestCameraPermission();
  }

  bool get mounted {
    return mounted;
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
    }
  }

  Future<void> _requestCameraPermission() async {
    final status = await Permission.camera.request();
    _cameraPermissionStatus = status;
  }

  void dispose() {
    _cameraController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScanBloc, ScanState>(
      listener: (context, state) {
        if (state.isRetake) {}
      },
      builder: (context, state) {
        final creditCard = CreditCard.empty();
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  child: Center(
                    child: _cameraController != null &&
                            _cameraController!.value.isInitialized
                        ? AspectRatio(
                            aspectRatio: _cameraController!.value.aspectRatio,
                            child: CameraPreview(_cameraController!),
                          )
                        : const CircularProgressIndicator(),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 4, 4),
                              child: ElevatedButton(
                                style: buttonSmallStyle,
                                onPressed: _imageFile == null
                                    ? () {
                                        _takePicture();
                                        context
                                            .read<ScanBloc>()
                                            .add(ScanEvent.onTake());
                                      }
                                    : null,
                                child: const Text(scanPageTakeButton),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(4, 8, 0, 4),
                              child: ElevatedButton(
                                style: buttonSmallStyle,
                                onPressed: _imageFile != null
                                    ? () {
                                        context
                                            .read<ScanBloc>()
                                            .add(ScanEvent.onRetake());
                                      }
                                    : null,
                                child: const Text(scanPageRetakeButton),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                          child: ElevatedButton(
                            style: buttonSmallStyle,
                            onPressed: () {
                              context.read<ScanBloc>().add(
                                    ScanEvent.onSubmit(creditCard),
                                  );
                            },
                            child: const Text(submitButtonText),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Camera Permission Status: $_cameraPermissionStatus',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _takePicture() async {
    final imageFile = await _cameraController!.takePicture();
    _imageFile = imageFile;
  }
}
