import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraDriver {
  CameraDriver();

  // late final List<CameraDescription> cameras;
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
    final cameras = await availableCameras();

    if (cameras.isNotEmpty) {
      final firstCamera = cameras.first;
    }

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
}

// class CameraDriver {

// }
