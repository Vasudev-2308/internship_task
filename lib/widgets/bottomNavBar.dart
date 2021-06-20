import 'package:flutter/material.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  @override
  Widget build(BuildContext context) {
    var colorhome = Colors.grey[400];
  
    bool isPressed = false;
    return Container(
      
      padding: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(color: Color(0xff7f53ac)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  isPressed = !isPressed;
                });
                Navigator.of(context).pushReplacementNamed('/home');
              },
              icon: Icon(
                Icons.home_outlined,
                color: isPressed ? Colors.blue : colorhome,
              )),
          IconButton(
              onPressed: () {
                setState(() {
                  isPressed = !isPressed;
                });
                Navigator.of(context).pushReplacementNamed('/tasks');
              },
              icon: Icon(Icons.file_present, color:isPressed ? Colors.blue : colorhome)),
          IconButton(
              onPressed: () {
                setState(() {
                  isPressed = !isPressed;
                });
                Navigator.of(context).pushReplacementNamed('/profile');
              },
              icon: Icon(Icons.person_outlined, color: isPressed ? Colors.blue : colorhome)),
          IconButton(
              onPressed: () {
                setState(() {
                  isPressed = !isPressed;
                });
                Navigator.of(context).pushReplacementNamed('/notifications');
              },
              icon: Icon(Icons.notifications_none_outlined, color: isPressed ? Colors.blue : colorhome))
        ],
      ),
    );
  }
}
