import 'dart:io';

import 'package:demo_assigment/screen/common/common_screen.dart';
import 'package:demo_assigment/screen/res/string.dart';
import 'package:demo_assigment/screen/resume_upload/resume_upload_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
Widget textFieldName() {
  return GetBuilder<ResumeUploadController>(
    builder: (controller) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(data: StringRes.name),
            SizedBox(height: 10,),
            textFormFiled(
              hintText: StringRes.name,
              controller: controller.nameController,
               validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter Name";
                  } else {
                    return null;
                  }
                },
            ),
          ],
        ),
      );
    },
  );
}

Widget textFieldEmail() {
  return GetBuilder<ResumeUploadController>(
    builder: (controller) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             text(data: StringRes.email),
            SizedBox(height: 10,),
            textFormFiled(
              hintText: StringRes.email,
              controller: controller.emailController,
               validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Email";
                  } else if (!(value.isEmail)) {
                    return "Please Enter Valid Email";
                  } else {
                    return null;
                  }
                },
            ),
          ],
        ),
      );
    },
  );
}
Widget textFieldContact() {
  return GetBuilder<ResumeUploadController>(
    builder: (controller) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             text(data: StringRes.contact),
            SizedBox(height: 10,),
            textFormFiled(
              hintText: StringRes.contact,
              controller: controller.contactController,
              validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter you phone number";
                  } else if (value.length == 9) {
                    return "Please Enter Must Be 10 Character";
                  } else {
                    return null;
                  }
                },
            ),
          ],
        ),
      );
    },
  );
}
Widget textFieldCurrentCompany() {
  return GetBuilder<ResumeUploadController>(
    builder: (controller) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             text(data: StringRes.currentCompany),
            SizedBox(height: 10,),
            textFormFiled(
              hintText: StringRes.currentCompany,
              controller: controller.currentCompanyController,
               validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter Company Name";
                  } else {
                    return null;
                  }
                },
            ),
          ],
        ),
      );
    },
  );
}
Widget dropDownSkills(){
  return  GetBuilder<ResumeUploadController>(
      id: 'company',
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(data: StringRes.skill),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()),
                child: DropdownButton(
                  value: controller.selectedValue,
                  hint: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(StringRes.skill),
                  ),
                  underline: const SizedBox(),
                  isExpanded: true,
                  borderRadius: BorderRadius.circular(10),
                  //dropdownColor: Colors.pink,
                  items: const [
                    DropdownMenuItem(
                        value: "Ui/Ux",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Ui/Ux"),
                        )),
                    DropdownMenuItem(
                        value: "Web Designing",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Web Designing"),
                        )),
                    DropdownMenuItem(
                        value: "Node.js",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Node.js"),
                        )), DropdownMenuItem(
                        value: "Flutter",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Flutter"),
                        )),DropdownMenuItem(
                        value: "React.js",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("React.js"),
                        )),DropdownMenuItem(
                        value: "Android",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Android"),
                        )),DropdownMenuItem(
                        value: "ios",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("ios"),
                        )),DropdownMenuItem(
                        value: "Laravel",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Laravel"),
                        )),
                  ],
                  onChanged: (value) {
                    controller.dropDownSkill(value);
                    print(value);
                  },
                ),
              ),
            ],
          ),
        );
      });
}
Widget dropDownExperience(){
  return  GetBuilder<ResumeUploadController>(
      id: 'document',
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(data: StringRes.experience),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()),
                child: DropdownButton(
                  value: controller.selectedValue1,
                  hint: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(StringRes.experience),
                  ),
                  underline: const SizedBox(),
                  isExpanded: true,
                  borderRadius: BorderRadius.circular(10),
                  //dropdownColor: Colors.pink,
                  items: const [
                    DropdownMenuItem(
                        value: "Fresher",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Fresher"),
                        )),
                    DropdownMenuItem(
                        value: "6 month",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("6 month"),
                        )),

                    DropdownMenuItem(
                        value: "1 year",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("1 year"),
                        )), DropdownMenuItem(
                        value: "2 year",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("2 year"),
                        )),DropdownMenuItem(
                        value: "3 year",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("3 year"),
                        )),DropdownMenuItem(
                        value: "4 year",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("4 year"),
                        )),DropdownMenuItem(
                        value: "5 year",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("5 year"),
                        )),DropdownMenuItem(
                        value: "8 year",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("8 year"),
                        )),DropdownMenuItem(
                        value: "10 year",
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("10 year"),
                        )),
                  ],
                  onChanged: (value) {
                    controller.dropDownExperience(value);
                    print(value);
                  },
                ),
              ),
            ],
          ),
        );
      });
}
Widget textFiledReason(){
return GetBuilder<ResumeUploadController>(builder:((controller) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text(data: StringRes.reason,),
        SizedBox(height: 10,),
        textFormFiled(
          hintText: StringRes.reason,
         controller: controller.reasonController,
          validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter reason";
                  } else {
                    return null;
                  }
                },
        ),
      ],
    ),
  );
} ));
}
Widget textFiledCurrentSalary(){
  return GetBuilder<ResumeUploadController>(builder:((controller) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          text(data: StringRes.current,),
          SizedBox(height: 10,),

          textFormFiled(
            hintText: StringRes.current,
            controller: controller.currentController,
             validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter Current salary";
                  } else {
                    return null;
                  }
                },
          ),
        ],
      ),
    );
  } ));
}
Widget textFiledExpectedSalary(){
  return GetBuilder<ResumeUploadController>(builder:((controller) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(data: StringRes.expected,),
          SizedBox(height: 10,),

          textFormFiled(
            hintText: StringRes.expected,
            controller: controller.expectedController,
             validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter expected salary";
                  } else {
                    return null;
                  }
                },
          ),
        ],
      ),
    );
  } ));
}


Widget resumeUpload(BuildContext context){
  return GetBuilder<ResumeUploadController>(
    id: 'image',
    builder: (controller) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(data:StringRes.resume ),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: GetBuilder<ResumeUploadController>(

              id: 'image',
              builder: (controller) {

                return Column(
                  children: [
                    Expanded(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: controller.imageFileList!.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          // border: Border.all(color: ColorRes.orange),
                                        ),
                                        child: Column(
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(10),
                                              child: Container(
                                                height: 120,
                                                width: 120,
                                                child: Image.file(
                                                  File(controller
                                                      .imageFileList![index].path),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                    Expanded(
                      child: controller.result != null
                          ? ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount:
                        controller.result?.files.length ?? 0,
                        itemBuilder:
                            (BuildContext context, int index) {
                          return Card(
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(controller
                                  .result?.files[index].name ??
                                  ''),
                            ),
                          );
                        },
                      )
                          : const Text("Please select document"),
                    ),


                  ],

                );
              }
            ),
          ),
          TextButton(onPressed: () {
            controller.bottomSheet(context);
          }, child: Text('Browser'))
        ],
      ),
    );
  },);
}


Widget text({required String data}) {
  return Text(
    data,
    style: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold
    ),
  );
}
Widget button(){
  return GetBuilder<ResumeUploadController>(
    builder: ( controller) {return OutlinedButton(onPressed: () {
controller.onTapCompanyButton();
    }, child: Text('Submit'));  },
  );
}