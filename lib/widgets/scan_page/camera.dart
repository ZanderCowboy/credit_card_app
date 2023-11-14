import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cameras = await availableCameras();

  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(
        camera: firstCamera,
      ),
    ),
  );
}

class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  late XFile? _imageFile = null;

  @override
  void initState() {
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
      enableAudio: false,
    );

    _initializeControllerFuture = _controller.initialize();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Define a boolean variable to track whether the camera preview is running
  bool _isCameraRunning = true;

  // Define a method to start the camera preview
  Future<void> _startCameraPreview() async {
    try {
      await _controller.initialize();
      await _controller.startImageStream((_) {});
    } catch (e) {
      // Error handling
    }
  }

// Define a method to stop the camera preview
  Future<void> _stopCameraPreview() async {
    try {
      await _controller.stopImageStream();
      await _controller.dispose();
    } catch (e) {
      // Error handling
    }
  }

// Define a method to handle the retake button press
  void _onRetakeButtonPressed() {
    setState(() {
      _isCameraRunning = true;
    });
    _startCameraPreview();
  }

  Widget _buildCameraPreview() {
    return Container(
      child: _isCameraRunning ? CameraPreview(_controller) : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Take a picture'),
      ),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildCameraPreview(),
                    // CameraPreview(
                    //   _controller,
                    //   child: Center(
                    //       child: Text(
                    //     'text',
                    //     style: TextStyle(
                    //       fontSize: 30,
                    //       color: Colors.black,
                    //     ),
                    //   )),
                    // ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 4, 4),
                                child: ElevatedButton(
                                  style: buttonSmallStyle,
                                  onPressed: () async {
                                    try {
                                      await _stopCameraPreview();

                                      // Set the `_isCameraRunning` variable to false
                                      setState(() {
                                        _isCameraRunning = false;
                                      });
                                      await _initializeControllerFuture;

                                      final image =
                                          await _controller.takePicture();

                                      if (!mounted) return;
                                      // await _initializeControllerFuture;

                                      // _imageFile =
                                      //     await _controller.takePicture();
                                      // if (!mounted) return;

                                      // await Navigator.of(context).push(
                                      //   MaterialPageRoute<MaterialApp>(
                                      //       builder: (context) {
                                      //     log('imagePath: ${_imageFile!.path}');
                                      //     return DisplayPictureScreen(
                                      //       imagePath: _imageFile!.path,
                                      //     );
                                      //   }),
                                      // );
                                    } catch (e) {
                                      print('e=$e');
                                    }
                                  },
                                  child: const Text(scanPageTakeButton),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 0, 4),
                                child: ElevatedButton(
                                  style: buttonSmallStyle,
                                  // onPressed: _imageFile != null
                                  //     ? null
                                  //     : () {
                                  //         log('imageFile = $_imageFile');
                                  //         _imageFile = null;
                                  //         log('error on retake');
                                  //       },
                                  onPressed: () {
                                    // _onRetakeButtonPressed();
                                    _onRetakeButtonPressed();
                                  },
                                  // onPressed: _imageFile != null
                                  //     ? () {
                                  //         context
                                  //             .read<ScanBloc>()
                                  //             .add(ScanEvent.onRetake());
                                  //       }
                                  //     : null,
                                  child: const Text(scanPageRetakeButton),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                          child: ElevatedButton(
                            style: buttonSmallStyle,
                            onPressed: () {},
                            child: const Text(submitButtonText),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            await _stopCameraPreview();

            // Set the `_isCameraRunning` variable to false
            setState(() {
              _isCameraRunning = false;
            });
            await _initializeControllerFuture;

            final image = await _controller.takePicture();

            if (!mounted) return;

            // await Navigator.of(context).push(
            //   MaterialPageRoute<MaterialApp>(
            //     builder: (context) => DisplayPictureScreen(
            //       imagePath: image.path,
            //     ),
            //   ),
            // );
          } catch (e) {
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }

  // void _onRetakeButtonPressed() {
  //   _controller.dispose();
  //   initState();
  // }
}

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture')),
      body: Image.file(File(imagePath)),
    );
  }
}
