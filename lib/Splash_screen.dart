import 'dart:async';

import 'package:admission_query_bot/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 8), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {

    return  const Scaffold(
      backgroundColor: Color(0xff1a5438),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              backgroundColor: Color(0xff1a5438),
              radius: 150,
              child: Image(
                image: AssetImage("images/whiteLogo.png"),
              ),
            ),
          ),
          Text("Enter GPGC's World of AI Chat!\nLet's Chat 🚀📚", textAlign: TextAlign.center,style: TextStyle(
            fontSize: 20
          ),),
          SizedBox(height: 200,),
          Text("Creators\n * M Faisal  * Abbas Ahmad * Akhtar Ali", textAlign: TextAlign.center,style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}
