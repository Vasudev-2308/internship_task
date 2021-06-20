import 'package:app/widgets/bottomNavBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
              body: SafeArea(
                              child: Container(
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
                      child: Text("Home Page", style: TextStyle(color: Colors.white),),
                    )


                   
                  ],
                ),
          

        ),
              ),
        bottomNavigationBar: MyBottomBar(),
      ),
    );
  }
}
