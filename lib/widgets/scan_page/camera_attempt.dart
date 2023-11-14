import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cameras = await availableCameras();

  final firstCamera = cameras.first;
  runApp(MyApp(camera: firstCamera));
}

class MyApp extends StatelessWidget {
  MyApp({required this.camera});

  final CameraDescription camera;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Camera Example',
      home: CameraScreen(camera: camera),
    );
  }
}

class CameraScreen extends StatefulWidget {
  CameraScreen({required this.camera});

  final CameraDescription camera;

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  bool _isCameraRunning = true;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;
    _controller = CameraController(firstCamera, ResolutionPreset.medium);
    await _controller.initialize();
    await _controller.startImageStream((_) {});
    setState(() {});
  }

  Future<void> _startCameraPreview() async {
    try {
      await _controller.initialize();
      await _controller.startImageStream((_) {});
      setState(() {
        _isCameraRunning = true;
      });
    } catch (e) {
      // Error handling
    }
  }

  Future<void> _stopCameraPreview() async {
    try {
      await _controller.stopImageStream();
      await _controller.dispose();
      setState(() {
        _isCameraRunning = false;
      });
    } catch (e) {
      // Error handling
    }
  }

  void _onRetakeButtonPressed() {
    setState(() {
      _isCameraRunning = true;
    });
    _startCameraPreview();
  }

  void _onTakeButtonPressed() async {
    // Stop the camera preview
    await _stopCameraPreview();

    // Set the `_isCameraRunning` variable to false
    setState(() {
      _isCameraRunning = false;
    });

    // Take the photo
    final image = await _controller.takePicture();

    // Display the retake button
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  child: !_isCameraRunning ? null : CameraPreview(_controller),
                ),
                ElevatedButton(
                    onPressed: () {
                      _onTakeButtonPressed();
                    },
                    child: Text('Take'))
                // Add other widgets as needed, such as the take button
              ],
            ),
          ),
          if (!_isCameraRunning)
            ElevatedButton(
              onPressed: _onRetakeButtonPressed,
              child: Text('Retake'),
            ),
        ],
      ),
    );
  }
}
