import 'package:demo_assigment/res/color_res.dart';
import 'package:demo_assigment/screen/home/home_controller.dart';
import 'package:demo_assigment/screen/home/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
     appBar: appBarTitle(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            text(),
          ],
        ),
      ),
    );
  }
}
