import 'package:camera/camera.dart';
import 'package:custom_image_picker/custom_image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late List<CameraDescription> cameras;
  late CameraController _cameraController;
  late List<dynamic> _gallery;
  CustomImagePicker imagePicker = CustomImagePicker();

  @override
  void initState() {
    initializeCam();
    getImages();
    super.initState();
  }

  Future<void> initializeCam() async {
    cameras = await availableCameras();
    _cameraController = CameraController(cameras[0], ResolutionPreset.medium);
    _cameraController.initialize().then((value) {
      if (!mounted) return;
      setState(() {});
    });
  }

  Future<void> getImages() async {
    await imagePicker.getAllImages.then((v) {
      setState(() {
        _gallery = v;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_cameraController.value.isInitialized) {
      return Container();
    }
    return const Scaffold(body: Center(child: Text("Camera Page")));
  }
}
