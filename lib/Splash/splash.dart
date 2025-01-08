import 'dart:async';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}
class _Splash_screenState extends State<Splash_screen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            () => Navigator.pop
            // pushReplacement(context, MaterialPageRoute(builder: (context)=>jobprifle()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
            color: Colors.white70,
          ),
          Positioned(top: 280,left: 40,
              child: Column(children: [
                Text("Welcome to IndiaHiring!",style: TextStyle(color: Colors.blue,fontSize: 29,
                    fontWeight: FontWeight.bold),),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                Text("Find Your Job Now.",style: TextStyle(color: Colors.blue.shade300,fontSize: 17),),
              ],)),
          Positioned(bottom: -250,
              child: Container(
                height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  child: Lottie.asset("anim/splash.json")))
        ],));
  }}