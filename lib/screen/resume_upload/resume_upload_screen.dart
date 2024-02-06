import 'package:demo_assigment/screen/resume_upload/resume_upload_controller.dart';
import 'package:demo_assigment/screen/resume_upload/resume_upload_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResumeUploadScreen extends StatelessWidget {
   ResumeUploadScreen({super.key});
ResumeUploadController resumeUploadController =Get.put(ResumeUploadController());
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: resumeUploadController.velidationformKey,
            child: Column(
              children: [
                textFieldName(),
                textFieldEmail(),
                textFieldContact(),
                dropDownSkills(),
                dropDownExperience(),
                textFieldCurrentCompany(),
                resumeUpload(context),
                dropDownExperience(),
                textFiledReason(),
                textFiledCurrentSalary(),
                textFiledExpectedSalary(),
                button(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
