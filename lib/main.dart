import 'package:app/screens/homepage.dart';
import 'package:app/screens/landing.dart';
import 'package:app/screens/notifications.dart';
import 'package:app/screens/profile.dart';
import 'package:app/screens/tasks.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>LandingPage(),
        '/home':(context)=>HomePage(),
        '/profile':(context)=>Profile(),
        '/tasks':(context)=>Tasks(),
        '/notifications':(context)=>Notifications(),
      },
    );
  }
}