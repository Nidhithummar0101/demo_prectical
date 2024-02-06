import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS--fICKVxvPhW_Ii929EBOdjrZHrdMmsSKHg&s')),
        ),
      ),
    );
  }
}