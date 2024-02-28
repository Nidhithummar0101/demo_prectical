import 'package:demo_assigment/res/color_res.dart';
import 'package:demo_assigment/res/icon_res.dart';
import 'package:demo_assigment/res/string_res.dart';
import 'package:demo_assigment/screen/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


AppBar appBarTitle(){
  return AppBar(
    backgroundColor: ColorRes.purple,
    foregroundColor: ColorRes.white,
    title: const Text(StringRes.task),centerTitle: true,);
}

Widget text(){
  return GetBuilder<HomeController>(
    id: 'update',
    builder: (controller) {
    return Column(
      children: [
        Container(
          height: 460,
          child: ListView.builder(
            itemCount: controller.tasks.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Checkbox(
                      activeColor: ColorRes.green,
                      value: controller.tasks[index].isCompleted,
                      onChanged: (value) => controller.toggleTaskCompletion(index),
                    ),
                    title: Text(controller.tasks[index].title),
                    trailing: IconButton(
                      icon: const Icon(IconRes.delete,color: ColorRes.red,),
                      onPressed: () => controller.deleteTask(index),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller.taskController,
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Enter a new task',
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(IconRes.add),
                onPressed: () => controller.addTask(controller.taskController.text),
              ),
            ],
          ),
        ),
      ],
    );
  },);
}