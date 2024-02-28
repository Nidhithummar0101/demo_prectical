import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Task {
  String title;
  bool isCompleted;

  Task(this.title, this.isCompleted);
}


class HomeController extends GetxController{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadTasks();
  }
  List<Task> tasks = [];
  TextEditingController taskController = TextEditingController();


  Future<void> loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> taskStrings = prefs.getStringList('tasks') ?? [];
    tasks = taskStrings.map((taskString) {
      List<String> parts = taskString.split(';');
      return Task(parts[0], parts[1] == 'true');
    }).toList();
    update(['update']);
  }

  Future<void> saveTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> taskStrings = tasks.map((task) => '${task.title};${task.isCompleted}').toList();
    prefs.setStringList('tasks', taskStrings);
  }
  void addTask(String title) {
    tasks.add(Task(title, false));
    taskController.clear();
    saveTasks();
    update(['update']);
  }

  void toggleTaskCompletion(int index) {
    tasks[index].isCompleted = !tasks[index].isCompleted;
    saveTasks();
    update(['update']);
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    saveTasks();
    update(['update']);
  }


}