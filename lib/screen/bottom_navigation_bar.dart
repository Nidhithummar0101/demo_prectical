
import 'package:demo_assigment/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  // final BottomController bottomController = Get.put(BottomController());

  int select = 0;
  List screen = [
    HomeScreen(),
    HomeScreen(),
  ];

  void onTapIndex(int index) {
    setState(() {
      select = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Image.asset('assets/image/poetryLogo.png'),
        backgroundColor: Colors.white,
        onPressed: (){
          setState(() {
            select =2;
          });

        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      select=0;
                    });
                  },
                  child: Icon(Icons.home)),
              InkWell(
                  onTap: () {
                    setState(() {
                      select=1;
                    });
                  },
                  child: Icon(Icons.bookmark_border_outlined)),

            ],
          ),
        ),
      ),
      body: screen[select],
    );
  }
}
