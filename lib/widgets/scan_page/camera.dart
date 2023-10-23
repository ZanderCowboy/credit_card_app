import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
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
    super.initState();

    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
      enableAudio: false,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
            final creditCard = CreditCard.empty();

            // return CameraPreview(_controller);

            return Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CameraPreview(
                      _controller,
                      child: Center(
                          child: Text(
                        'text',
                        style: TextStyle(fontSize: 30),
                      )),
                    ),
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
                                      // await _initializeControllerFuture;

                                      _imageFile =
                                          await _controller.takePicture();
                                      log('_imageFile take = $_imageFile');
                                      if (!mounted) return;

                                      await Navigator.of(context).push(
                                        MaterialPageRoute<MaterialApp>(
                                          builder: (context) =>
                                              DisplayPictureScreen(
                                            imagePath: _imageFile!.path,
                                          ),
                                        ),
                                      );
                                    } catch (e) {
                                      print('e=$e');
                                    }
                                  },
                                  // onPressed: _imageFile == null
                                  //     ? () {
                                  //         _takePicture();
                                  //         context
                                  //             .read<ScanBloc>()
                                  //             .add(ScanEvent.onTake());
                                  //       }
                                  //     : null,
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
                                      ? null
                                      : () {
                                          log('imageFile = $_imageFile');
                                          _imageFile = null;
                                          log('error on retake');
                                        },
                                  // onPressed: () {
                                  // _onRetakeButtonPressed();
                                  // _controller.dispose();
                                  // initState();
                                  // },
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
                            onPressed: () {
                              // context.read<ScanBloc>().add(
                              //       ScanEvent.onSubmit(creditCard),
                              //     );
                            },
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
            await _initializeControllerFuture;

            final image = await _controller.takePicture();

            if (!mounted) return;

            await Navigator.of(context).push(
              MaterialPageRoute<MaterialApp>(
                builder: (context) => DisplayPictureScreen(
                  imagePath: image.path,
                ),
              ),
            );
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
