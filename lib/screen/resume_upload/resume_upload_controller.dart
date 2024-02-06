import 'package:demo_assigment/screen/home/home_screen.dart';
import 'package:demo_assigment/screen/res/icon.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:open_file/open_file.dart';


class ResumeUploadController extends GetxController{
  final velidationformKey = GlobalKey<FormState>();
  String? selectedValue;
  void dropDownSkill(String? value) {
    selectedValue = value;
    update(['company']);
  }
  String? selectedValue1;

  void dropDownExperience(String? value) {
    selectedValue1 = value;
    update(['document']);
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController reasonController = TextEditingController();
  TextEditingController currentController = TextEditingController();
  TextEditingController expectedController = TextEditingController();
  TextEditingController currentCompanyController = TextEditingController();


  List<XFile>? imageFileList = [];

  final ImagePicker imagePicker = ImagePicker();
  void selectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    print("Image List Length:" + imageFileList!.length.toString());
    update(['image']);
  }

  Future<void> imagePickCamera() async {
    ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imageFileList!.add(image);
    }
    update(["image"]);
  }
    Future<void> openFile() async {
    result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
    );

    if (result == null) {
      print("No file selected");
      // File file = File(result!.files.single.path!);
    } else {
      for (var element in result!.files) {
        final file = result!.files.first;
        openFile1(file);
        print(element.name);
      }
      update(['image']);
    }

    update(['image']);
  }

  void openFile1(PlatformFile file) {
    OpenFile.open(file.path);
  }


  FilePickerResult? result;
  

  void bottomSheet(BuildContext context) {
    showModalBottomSheet(
      // backgroundColor: ColorRes.orange,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) {
        return Container(
          height: 180,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    openFile();
                    Get.back();
                  },
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(IconRes.file),
                      ),
                      const Text('document1'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    selectImages();
                    Get.back();
                  },
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(IconRes.photo),
                      ),
                      const Text('album'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    imagePickCamera();
                    Get.back();
                  },
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(IconRes.camera),
                      ),
                      const Text('camera'),
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
  void onTapCompanyButton() {
    if (velidationformKey.currentState!.validate()) {
     Get.snackbar('success', 'form');
      Get.to(const HomeScreen());
    } else {
     Get.snackbar('fail', 'form');
    }
  }


}