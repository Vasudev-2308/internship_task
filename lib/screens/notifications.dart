import 'package:app/widgets/bottomNavBar.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({ Key? key }) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.deepPurpleAccent,
                    Colors.deepPurple,
                    Colors.deepPurple
                  ]
                )
              ),

              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text("Notifications Page", style: TextStyle(color: Colors.white),),
                    )


                   
                  ],
              ),
          

        ),
        bottomNavigationBar: MyBottomBar(),
      );
  }
}