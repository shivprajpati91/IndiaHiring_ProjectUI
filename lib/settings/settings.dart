import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/bottom_navigator/bottomnavigator.dart';
class settings1 extends StatefulWidget {
  const settings1({super.key});

  @override
  State<settings1> createState() => _settings1State();
}

class _settings1State extends State<settings1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(title:Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         IconButton(onPressed: (){

           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>bottomnavigation2()));
         }, icon:  Icon(CupertinoIcons.arrow_left,color: Colors.blue,),),
          SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text("Settings and Activity",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
          )
        ],),),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height*0.056,
                width: MediaQuery.sizeOf(context).width*0.9,
                decoration: BoxDecoration(color: Colors.blue.shade100,borderRadius: BorderRadius.circular(20)),
                child:  TextFormField(decoration: InputDecoration(hintText: "  Search",hintStyle: TextStyle(color: Colors.black45),
                  filled: true,fillColor: Colors.white38,disabledBorder: InputBorder.none,focusedBorder: InputBorder.none,
                  prefixIcon: Icon(Icons.search,color: Colors.blue,size: 30,),enabledBorder: InputBorder.none,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),),
                  keyboardType: TextInputType.name,),),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
              Container(height: MediaQuery.sizeOf(context).height*0.06,
              width: MediaQuery.sizeOf(context).width*0.9,
                color: Colors.white,
                child: Row(children: [Icon(Icons.person,color: Colors.blue,),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                Text("Account settings",style: TextStyle(fontSize: 18,color: Colors.blue),),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.35,),
                  Icon(CupertinoIcons.arrow_right,color: Colors.blue,)
                ],),
              ),SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Container(height: MediaQuery.sizeOf(context).height*0.06,
                width: MediaQuery.sizeOf(context).width*0.9,
                color: Colors.white,
                child: Row(children: [Icon(Icons.devices_sharp,color: Colors.blue,),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                  Text("Device Menagment",style: TextStyle(fontSize: 18,color: Colors.blue),),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.30,),
                  Icon(CupertinoIcons.arrow_right,color: Colors.blue,)
                ],),
              ),SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Container(height: MediaQuery.sizeOf(context).height*0.06,
                width: MediaQuery.sizeOf(context).width*0.9,
                color: Colors.white,
                child: Row(children: [Icon(Icons.email_outlined,color: Colors.blue,),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                  Text("Email settings",style: TextStyle(fontSize: 18,color: Colors.blue),),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.40,),
                  Icon(CupertinoIcons.arrow_right,color: Colors.blue,)
                ],),
              ),SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Container(height: MediaQuery.sizeOf(context).height*0.06,
                width: MediaQuery.sizeOf(context).width*0.9,
                color: Colors.white,
                child: Row(children: [Icon(Icons.lock_open,color: Colors.blue,),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                  Text("Privacy settings",style: TextStyle(fontSize: 18,color: Colors.blue),),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.36,),
                  Icon(CupertinoIcons.arrow_right,color: Colors.blue,)
                ],),
              ),SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Container(height: MediaQuery.sizeOf(context).height*0.06,
                width: MediaQuery.sizeOf(context).width*0.9,
                color: Colors.white,
                child: Row(children: [Icon(Icons.language,color: Colors.blue,),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                  Text("Country & Language",style: TextStyle(fontSize: 18,color: Colors.blue),),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.27,),
                  Icon(CupertinoIcons.arrow_right,color: Colors.blue,)
                ],),
              ),SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Container(height: MediaQuery.sizeOf(context).height*0.06,
                width: MediaQuery.sizeOf(context).width*0.9,
                color: Colors.white,
                child: Row(children: [Icon(Icons.help_outline,color: Colors.blue,),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                  Text("Help Centre",style: TextStyle(fontSize: 18,color: Colors.blue),),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.44,),
                  Icon(CupertinoIcons.arrow_right,color: Colors.blue,)
                ],),
              ),SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Container(height: MediaQuery.sizeOf(context).height*0.06,
                width: MediaQuery.sizeOf(context).width*0.9,
                color: Colors.white,
                child: Row(children: [Icon(Icons.list_sharp,color: Colors.blue,),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                  Text("Saved Jobs",style: TextStyle(fontSize: 18,color: Colors.blue),),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.44,),
                  Icon(CupertinoIcons.arrow_right,color: Colors.blue,)
                ],),
              ),SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Container(height: MediaQuery.sizeOf(context).height*0.06,
                width: MediaQuery.sizeOf(context).width*0.9,
                color: Colors.white,
                child: Row(children: [Icon(Icons.man,color: Colors.blue,),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                  Text("Accessblity",style: TextStyle(fontSize: 18,color: Colors.blue),),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.44,),
                  Icon(CupertinoIcons.arrow_right,color: Colors.blue,)
                ],),
              ),SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Container(height: MediaQuery.sizeOf(context).height*0.06,
                width: MediaQuery.sizeOf(context).width*0.9,
                color: Colors.white,
                child: Row(children: [Icon(Icons.error_outline_rounded,color: Colors.blue,),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                  Text("About",style: TextStyle(fontSize: 18,color: Colors.blue),),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.54,),
                  Icon(CupertinoIcons.arrow_right,color: Colors.blue,)
                ],),
              ),SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),


            ],
          ),
        ),
      ),
    );
  }
}
