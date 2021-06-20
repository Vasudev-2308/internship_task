import 'package:app/widgets/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  //var col = Colors.grey[400];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
          child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xff647dee),
                
                Color(0xff7f53ac)
              ])),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: Transform.rotate(
                              angle: 180 * math.pi / 180,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.menu_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ))),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.7,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(100)),
                          child: Center(
                              child: Icon(
                            Icons.person_outline,
                            color: Colors.white,
                            size: 30,
                          )),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35, top: 35),
                  child: Text("Hello Ghulam",
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35, top: 20),
                  child: Text("6 Tasks Pending",
                      style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 20, color: Colors.grey[300]))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 45, left: 20, right: 20),
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                           BoxShadow(
          color: Colors.deepPurple,
          blurRadius: 4,
          offset: Offset(4, 8), // Shadow position
        ), //BoxShadow
                        ],
                        color: Colors.deepPurple[900],),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 18, left: 18),
                          child: Text("Mobile App Design",
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 18, top: 10),
                            child: Text(
                              "Mike and Anita",
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(color: Colors.grey[400])),
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 18, top: 25),
                            child: Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 8,
                                  child: new Stack(
                                    //alignment:new Alignment(x, y)
                                    children: <Widget>[
                                      Container(
                                          decoration: BoxDecoration(
                                            color: Colors.yellow,
                                            border: Border.all(
                                                color: Colors.white, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            //image: DecorationImage(image: AssetImage('assets/images/person.png'),fit: BoxFit.contain)
                                          ),
                                          child: new Icon(
                                            Icons.person,
                                            size: 26.0,
                                            color: Colors.red,
                                          )),
                                      new Positioned(
                                        left: 20.0,
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                            child: new Icon(
                                              Icons.person,
                                              size: 26.0,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 1.7,
                                ),
                                Text("Now",
                                    style: GoogleFonts.lato(
                                        textStyle:
                                            TextStyle(color: Colors.grey[400])))
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0, left: 35),
                  child: Row(children: [
                    Text(
                      "Monthly Review",
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                        icon: Icon(Icons.inbox_rounded, color: Colors.white),
                        onPressed: () {},
                      ),
                    )
                  ]),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35, bottom: 20),
                        child: makeContainerone("22", "Done"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: makeContainertwo("10", "On going"),
                      )
                    ]),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, bottom: 20),
                        child: makeContainertwo("7", "In progress"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: makeContainerone("12", "Waiting for review"),
                      )
                    ])
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: MyBottomBar(),
      ),
    );
  }
}

Widget makeContainerone(String maintext, String progress) {
  return Container(
    width: 150,
    height: 150,
    decoration: BoxDecoration(
      color: Colors.deepPurple[900],
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
         BoxShadow(
        color: Colors.deepPurple,
        blurRadius: 4,
        offset: Offset(4, 8), // Shadow position
      ), //BoxShadow
      ],
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(maintext,
         style: GoogleFonts.lato(textStyle: TextStyle(
           fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25)),),
           SizedBox(height: 10,), Text(progress,style: GoogleFonts.lato(textStyle: TextStyle(
           fontWeight: FontWeight.bold, color: Colors.grey[400], fontSize: 14)))],
      ),
    ),
  );
}

Widget makeContainertwo(String maintext, String progress) {
  return Container(
    width: 150,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.deepPurple[900],
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
         BoxShadow(
        color: Colors.deepPurple,
        blurRadius: 4,
        offset: Offset(4, 8), // Shadow position
      ),
      ],
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(maintext,
         style: GoogleFonts.lato(textStyle: TextStyle(
           fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25)),),
           SizedBox(height: 10,), Text(progress,style: GoogleFonts.lato(textStyle: TextStyle(
           fontWeight: FontWeight.bold, color: Colors.grey[400], fontSize: 14)))],
      ),
    ),
  );
}

