import 'package:app/screens/homepage.dart';
import 'package:app/screens/tasks.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDBE9F6),
      body: SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: FlutterLogo(
                    style: FlutterLogoStyle.markOnly,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 40),
                child: Text("Manage your daily tasks",
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000059)))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 40, right: 40),
                child: Text(
                  "Team and Project management with solution providing App",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff000059))),
                ),
              ),
              Stack(children: [
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 20),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 65, top: 40),
                  child: RichText(
                    text: TextSpan(
                        text: 'Get Started',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Tasks()));
                          },
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(fontSize: 24),
                            color: Color(0xff000059),
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ])
            ])),
      ),
    );
  }
}
