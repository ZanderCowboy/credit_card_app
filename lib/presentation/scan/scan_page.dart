import 'package:camera/camera.dart';
import 'package:credit_card_app/application/export_application.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/widgets/export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

/// Scan page to scan a card
class ScanPage extends StatelessWidget {
  /// ScanPage constructor
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _ScanPage extends StatefulWidget {
  const _ScanPage();

  @override
  State<_ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<_ScanPage> {
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
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(scanAppBarTitle),
      ),
      body: BlocProvider(
        create: (_) => coreSl<ScanBloc>(),
        child: BlocBuilder<ScanBloc, ScanState>(
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
                                aspectRatio:
                                    _cameraController!.value.aspectRatio,
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
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 4, 4),
                                  child: ElevatedButton(
                                    style: buttonSmallStyle,
                                    onPressed: _imageFile == null
                                        ? _takePicture
                                        : null,
                                    child: const Text(scanPageTakeButton),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 0, 4),
                                  child: ElevatedButton(
                                    style: buttonSmallStyle,
                                    onPressed: _imageFile == null
                                        ? _retakePicture
                                        : null,
                                    child: const Text(scanPageRetakeButton),
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
                                      const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                  child: ElevatedButton(
                                    style: buttonSmallStyle,
                                    onPressed: () {
                                      _submitPicture();
                                      context.read<ScanBloc>().add(
                                            ScanEvent.onPressedSubmitScan(
                                              creditCard,
                                            ),
                                          );
                                    },
                                    child: const Text(submitButtonText),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Text(
                              '''
Camera Permission Status: $_cameraPermissionStatus''',
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
        ),
      ),
    );
  }
}
