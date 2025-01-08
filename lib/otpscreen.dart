import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});
  State<OtpVerification> createState() => _OtpVerificationState();}
class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 160.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("IndiaHirings",style: TextStyle(fontSize: 30,color: Colors.blue,fontWeight: FontWeight.bold),),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),
                Text(" OTP Verification",style: TextStyle(
                  color: Colors.blue, fontSize: 21, fontWeight: FontWeight.w500,),),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                Text("we have sent a verification code to\n              +914830583654",style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black54),),
                SizedBox(height: 50,),
                Pinput(
                    length: 5,
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    obscuringWidget: Text(" * "),
                    onChanged: (value){
                      print(value);},
                    onCompleted: (value){ }),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.09,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0,),
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.09,),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: TextButton(onPressed: (){}, child: Text("Didn't get the OTP?",style:
                        TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.blue,),),)),
                      Text("   Resend SMS in 12s"),
                    ],),),),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: TextButton(onPressed: (){}, child: Text("Go back to login method",
                    style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))),],
            ),),),
      ),);
  }}