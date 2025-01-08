import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class accountdesign extends StatefulWidget {
  const accountdesign({super.key});
  @override
  State<accountdesign> createState() => _accountdesignState();
}
class _accountdesignState extends State<accountdesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.white,),
          Positioned(top: 140,left: 40,
            child: Container(
              height: MediaQuery.sizeOf(context).height*0.5,
              width: MediaQuery.sizeOf(context).width*0.8,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.05,
                    width: MediaQuery.sizeOf(context).width,

                    child: Image.asset("img/indiahiring.jpg"),
                  ),SizedBox( height: MediaQuery.sizeOf(context).height*0.03,),
                  Text("Choose Your Account Type",style: TextStyle(fontSize: 24,color: Colors.blue,fontWeight: FontWeight.w500),),
                  SizedBox( height: MediaQuery.sizeOf(context).height*0.03,),
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.05,
                    width: MediaQuery.sizeOf(context).width*0.6,
                    child: TextButton(onPressed: (){}, child: Text("Jobseekers",style: TextStyle(color: Colors.white),),style:
                    TextButton.styleFrom(backgroundColor: Colors.blue.shade700),),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.05,
                    width: MediaQuery.sizeOf(context).width*0.6,
                    child: TextButton(onPressed: (){}, child: Text("Candidate",style: TextStyle(color: Colors.white),),style:
                    TextButton.styleFrom(backgroundColor: Colors.blue.shade700
                    ),),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.05,
                    width: MediaQuery.sizeOf(context).width*0.6,
                    child: TextButton(onPressed: (){}, child: Text("Employeer",style: TextStyle(color: Colors.white),),style:
                    TextButton.styleFrom(backgroundColor: Colors.blue.shade700),),
                  ),
                ],),
            ),),
          Positioned(bottom: -18,
              child: Container(
            height: MediaQuery.sizeOf(context).height*0.4,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.white,
                child:Lottie.asset("anim/splash.json"),
          ))
        ],),
    );}
}
