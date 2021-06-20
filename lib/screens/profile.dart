import 'package:app/widgets/bottomNavBar.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                      child: Text("Profile Page", style: TextStyle(color: Colors.white),),
                    )


                   
                  ],
              ),
          

        ),
        bottomNavigationBar: MyBottomBar(),
      );
  }
}