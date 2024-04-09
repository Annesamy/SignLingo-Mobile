import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:mobile/widgets/custom_scaffold_2.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  CameraImage? cameraImage;
  CameraController? cameraController;
  int selectedCameraIndex = 0;
  String output = '';
  List<CameraDescription>? cameras;

  @override
  void initState(){
    super.initState();
    initializeCameras();
    loadModel();
  }

  Future<void> initializeCameras() async {
    cameras = await availableCameras();
    if (cameras != null && cameras!.isNotEmpty) {
      loadCamera();
    } else {
      // Handle the case when no cameras are found.
      print('No camera is found');
    }
  }

  void loadCamera(){
    selectedCameraIndex = 0; // Assuming this is the rear camera.
    _initializeCameraController();
  }

  void _initializeCameraController() async {
    if (cameras != null && cameras!.isNotEmpty) {
      cameraController = CameraController(
        cameras![selectedCameraIndex],
        ResolutionPreset.medium,
      );

      try {
        await cameraController!.initialize();
        setState(() {
          cameraController!.startImageStream((imageStream) {
            cameraImage = imageStream;
            runModel();
          });
        });
      } on CameraException catch (e) {
        // Handle the exception, possibly by showing an error message.
        print(e.description);
      }
    }
  }

  void switchCamera() async {
    if (cameras == null || cameras!.length < 2) {
      // Can't switch cameras if there aren't two to switch between
      return;
    }
    selectedCameraIndex = selectedCameraIndex == 0 ? 1 : 0;
    await cameraController?.dispose();
    _initializeCameraController();
  }

  runModel() async {
    if(cameraImage != null){
      var predictions = await Tflite.runModelOnFrame(
          bytesList: cameraImage!.planes.map((plane) {
            return plane.bytes;
          }).toList(),
          imageHeight: cameraImage!.height,
          imageWidth: cameraImage!.width,
          imageMean: 127.5,
          imageStd: 127.5,
          rotation: 90,
          numResults: 2,
          threshold: 0.1,
          asynch: true
      );
      predictions!.forEach((element) {
        setState(() {
          output = element['label'];
        });
      });
    }
  }

  loadModel() async {
    await Tflite.loadModel(
        model: 'assets/tflite/model.tflite',
        labels: 'assets/tflite/labels.txt'
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: MediaQuery.of(context).size.height*0.7,
              width: MediaQuery.of(context).size.width,
              child: !cameraController!.value.isInitialized?
              Container():
              AspectRatio(
                aspectRatio: cameraController!.value.aspectRatio,
                child: CameraPreview(cameraController!),
              ),
            ),
          ),
          Text(
            output,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          ElevatedButton(
              onPressed: switchCamera,
              child: const Icon(Icons.switch_camera)
          ),
        ],
      ),
    );
  }
}
