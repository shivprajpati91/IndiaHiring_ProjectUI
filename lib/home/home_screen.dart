import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Postedjobs.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});
  @override

  State<homescreen> createState() => _homescreenState();}
class _homescreenState extends State<homescreen> {
  @override
  List<Map<dynamic, dynamic>> userList = [];
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
              height: MediaQuery.sizeOf(context).height*0.18,
              width: MediaQuery.sizeOf(context).width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.056,
                    width: MediaQuery.sizeOf(context).width*0.9,
                    decoration: BoxDecoration(color: Colors.blue.shade100,borderRadius: BorderRadius.circular(20)),
                    child:  TextFormField(decoration: InputDecoration(hintText: "  Job title or company",hintStyle: TextStyle(color: Colors.black45),
                    filled: true,fillColor: Colors.white38,disabledBorder: InputBorder.none,enabledBorder: InputBorder.none,focusedBorder: InputBorder.none,
                      prefixIcon: Icon(Icons.search,color: Colors.white,size: 30,),
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),),
                     keyboardType: TextInputType.name,),),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  Positioned(
                    left: 20,
                    child:
                    Container(
                      height: MediaQuery.sizeOf(context).height*0.056,
                      width: MediaQuery.sizeOf(context).width*0.9,
                      decoration: BoxDecoration(color: Colors.blue.shade100,borderRadius: BorderRadius.circular(20)),
                      child:  TextFormField(decoration: InputDecoration(hintText: "  Enter city",hintStyle: TextStyle(color: Colors.black45),
                        filled: true,fillColor: Colors.white38,disabledBorder: InputBorder.none,focusedBorder: InputBorder.none,
                        prefixIcon: Icon(Icons.search,color: Colors.white,size: 30,),enabledBorder: InputBorder.none,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),),
                        keyboardType: TextInputType.name,),),),
                ],),),),
        SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            height: MediaQuery.sizeOf(context).height*0.11,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.15,
                    width: MediaQuery.sizeOf(context).width*0.42,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue.shade300,),
                    child: Center(child: Column(
                      children: [
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
                        Text("Profile Matched",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                        Text("450 Jobs",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)
                      ],
                    )),
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.15,
                    width: MediaQuery.sizeOf(context).width*0.42,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue.shade300,),
                    child: Center(child: Column(
                      children: [
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
                        Text("Recuiter Action",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                        Text("40 Actions",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)
                      ],
                    )),
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.15,
                    width: MediaQuery.sizeOf(context).width*0.42,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue.shade300,),
                    child: Center(child: Column(
                      children: [
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
                        Text("Profile Shortlisted",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                        Text("59 Profiles  ",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)
                      ],
                    )),
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.15,
                    width: MediaQuery.sizeOf(context).width*0.42,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue.shade300,),
                    child: Center(child: Column(
                      children: [
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
                        Text("Profile Matched",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                        Text("450 Jobs",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)
                      ],
                    )),),
                ],),),
          ),),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            height: MediaQuery.sizeOf(context).height*0.45,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                Text("Recommendet Jobs :",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25,color: Colors.black),),
               SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        child: Container(
                          height: MediaQuery.sizeOf(context).height*0.33,
                          width: MediaQuery.sizeOf(context).width*0.55,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue.shade50),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                                Container(
                                  height: MediaQuery.sizeOf(context).height*0.035,
                                  width: MediaQuery.sizeOf(context).width*0.35,
                                  decoration: BoxDecoration(color: Colors.blue),
                                  child: Center(child: Text("Activily Hiring",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                                ),
                                SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                                Text("Buisness Devlopment Associate",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                                Text("PlanetSpark",style: TextStyle(color: Colors.black54),),
                                Divider(),
                                Row(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [

                                    Icon(Icons.location_on,color: Colors.blue,),
                                    SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
                                    Text("  Chandigarh, Delhi, Jaipur,\n Madhya Pradesh",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                                  ],),
                                SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                                Row(
                                  children: [

                                    Icon(Icons.call_to_action_sharp,color: Colors.blue,size: 15,),
                                    SizedBox(width: MediaQuery.sizeOf(context).width*0.01,height: MediaQuery.sizeOf(context).height*0.04,),

                                    Text("  20000Rs - 7000000 / year",style: TextStyle(fontWeight: FontWeight.w400),),

                                  ],
                                ),
                                SizedBox(height: MediaQuery.sizeOf(context).height*0.0,),
                                TextButton(onPressed: (){}, child:Row(children: [Text("View Details",style: TextStyle(color: Colors.blue),),
                                  Icon(CupertinoIcons.right_chevron)],))
                              ],),
                          ),),onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>postedjobs()));
                      },
                      ),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                      Container(
                        height: MediaQuery.sizeOf(context).height*0.33,
                        width: MediaQuery.sizeOf(context).width*0.55,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue.shade50),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                              Container(
                                height: MediaQuery.sizeOf(context).height*0.035,
                                width: MediaQuery.sizeOf(context).width*0.35,
                                decoration: BoxDecoration(color: Colors.blue),
                                child: Center(child: Text("Activily Hiring",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                              ),
                              SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                              Text("Buisness Devlopment Associate",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                              Text("PlanetSpark",style: TextStyle(color: Colors.black54),),
                              Divider(),
                              Row(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [

                                  Icon(Icons.location_on,color: Colors.blue,),
                                  SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
                                  Text("  Chandigarh, Delhi, Jaipur,\n Madhya Pradesh",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                                ],),
                              SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                              Row(
                                children: [

                                  Icon(Icons.call_to_action_sharp,color: Colors.blue,size: 15,),
                                  SizedBox(width: MediaQuery.sizeOf(context).width*0.01,height: MediaQuery.sizeOf(context).height*0.04,),

                                  Text("  20000Rs - 7000000 / year",style: TextStyle(fontWeight: FontWeight.w400),),

                                ],
                              ),
                              SizedBox(height: MediaQuery.sizeOf(context).height*0.0,),
                              TextButton(onPressed: (){}, child:Row(children: [Text("View Details",style: TextStyle(color: Colors.blue),),
                                Icon(CupertinoIcons.right_chevron)],))
                            ],),
                        ),),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                      Container(
                        height: MediaQuery.sizeOf(context).height*0.33,
                        width: MediaQuery.sizeOf(context).width*0.55,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue.shade50),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                              Container(
                                height: MediaQuery.sizeOf(context).height*0.035,
                                width: MediaQuery.sizeOf(context).width*0.35,
                                decoration: BoxDecoration(color: Colors.blue),
                                child: Center(child: Text("Activily Hiring",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                              ),
                              SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                              Text("Buisness Devlopment Associate",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                              Text("PlanetSpark",style: TextStyle(color: Colors.black54),),
                              Divider(),
                              Row(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [

                                  Icon(Icons.location_on,color: Colors.blue,),
                                  SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
                                  Text("  Chandigarh, Delhi, Jaipur,\n Madhya Pradesh",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                                ],),
                              SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                              Row(
                                children: [

                                  Icon(Icons.call_to_action_sharp,color: Colors.blue,size: 15,),
                                  SizedBox(width: MediaQuery.sizeOf(context).width*0.01,height: MediaQuery.sizeOf(context).height*0.04,),

                                  Text("  20000Rs - 7000000 / year",style: TextStyle(fontWeight: FontWeight.w400),),

                                ],
                              ),
                              SizedBox(height: MediaQuery.sizeOf(context).height*0.0,),
                              TextButton(onPressed: (){}, child:Row(children: [Text("View Details",style: TextStyle(color: Colors.blue),),
                                Icon(CupertinoIcons.right_chevron)],))
                            ],
                          ),
                        ),
                      ),
                    ],),
                )],
            ),),
        ),
        
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Letets jobs on IndiaHiring :",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Container(
                height: MediaQuery.sizeOf(context).height*0.17,
                width: MediaQuery.sizeOf(context).width,
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height*0.13,
                        width: MediaQuery.sizeOf(context).width*0.68,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),    color: Colors.blue.shade50,),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                             Container(
                               height: MediaQuery.sizeOf(context).height*0.035,
                               width: MediaQuery.sizeOf(context).width*0.35,
                               decoration: BoxDecoration(color: Colors.blue),
                               child: Center(child: Text("Activily Hiring",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                             ),
                             SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                             Text("Buisness Devlopment Accociate",style: TextStyle(color: Colors.black,fontSize: 16,
                                 fontWeight: FontWeight.w500),),
                             Text("PlanetSpark",style: TextStyle(color: Colors.black54,fontSize: 12),)
                           ],
                         ),
                       ),
                      ),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                      Container(
                        height: MediaQuery.sizeOf(context).height*0.13,
                        width: MediaQuery.sizeOf(context).width*0.68,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),    color: Colors.blue.shade50,),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                              Container(
                                height: MediaQuery.sizeOf(context).height*0.035,
                                width: MediaQuery.sizeOf(context).width*0.35,
                                decoration: BoxDecoration(color: Colors.blue),
                                child: Center(child: Text("Activily Hiring",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                              ),
                              SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                              Text("Buisness Devlopment Accociate",style: TextStyle(color: Colors.black,fontSize: 16,
                                  fontWeight: FontWeight.w500),),
                              Text("PlanetSpark",style: TextStyle(color: Colors.black54,fontSize: 12),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],);
    }}
