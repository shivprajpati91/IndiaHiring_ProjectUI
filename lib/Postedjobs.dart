import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'home/bottom_navigator/bottomnavigator.dart';
class postedjobs extends StatefulWidget {
  const postedjobs({super.key});

  @override
  State<postedjobs> createState() => _postedjobsState();
}
class _postedjobsState extends State<postedjobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(width: MediaQuery.sizeOf(context).width*0.16,),
            Text("IndiaHirings",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.18,),
            IconButton(onPressed: (){

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>bottomnavigation2()));
            }, icon: Icon(CupertinoIcons.bell_fill,color: Colors.blue,))
          ],),
        centerTitle: true,),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Shiv prajapati",style: TextStyle(color: Colors.white,fontSize: 27),),
              accountEmail: Text("shivprajapati3435@gmail.com"),

              // currentAccountPicture: CircleAvatar(
              //   backgroundColor: Colors.orange,
              //   child: Text(
              //     "S",
              //     style: TextStyle(fontSize: 40.0),
              //   ),
              // ),
            ),
            ListTile(
              leading: Row(children: [Text("Home",style: TextStyle(fontSize: 23),),SizedBox(width: MediaQuery.sizeOf(context).width*0.3,),
                Icon(CupertinoIcons.arrow_right,color: Colors.blue,)],),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Row(children: [Text("My Profile",style: TextStyle(fontSize: 23),),SizedBox(width: MediaQuery.sizeOf(context).width*0.3,),
                Icon(CupertinoIcons.arrow_right,color: Colors.blue,)],),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Row(children: [Text("My Reviews",style: TextStyle(fontSize: 23),),SizedBox(width: MediaQuery.sizeOf(context).width*0.3,),
                Icon(CupertinoIcons.arrow_right,color: Colors.blue,)],),
              onTap: () {
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(children: [
              SizedBox( width: MediaQuery.sizeOf(context).width*0.04,),
              Text("Hello,\nStewards",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
              SizedBox( width: MediaQuery.sizeOf(context).width*0.04,),
              Container(
                height: MediaQuery.sizeOf(context).height*0.056,
                width: MediaQuery.sizeOf(context).width*0.66,
                decoration: BoxDecoration(color: Colors.blue.shade100,borderRadius: BorderRadius.circular(10)),
                child:  TextFormField(decoration: InputDecoration(hintText: "  Search",hintStyle: TextStyle(color: Colors.blue),
                  filled: true,fillColor: Colors.white38,disabledBorder: InputBorder.none,enabledBorder: InputBorder.none,focusedBorder: InputBorder.none,
                  prefixIcon: Icon(Icons.search,color: Colors.blue,size: 30,),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),),
                  keyboardType: TextInputType.name,),),
            ],),SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
            Container(
              height: MediaQuery.sizeOf(context).height*1.5,
              width: MediaQuery.sizeOf(context).width*0.9,
              color: Colors.white,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Posted Jobs :",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.30,
                    width: MediaQuery.sizeOf(context).width*0.9,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.blue.shade50,),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
                              Text("Associate - Corporate Relation\n& Partnership",style: TextStyle(fontSize: 17,
                                  fontWeight: FontWeight.bold),),
                              SizedBox(width: MediaQuery.sizeOf(context).width*0.050,),
                              Icon(CupertinoIcons.square_list_fill,color: Colors.black,size: 27,),
                              SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                              Icon(Icons.block_flipped,color: Colors.black,size: 30,)
                            ],),
                          Text("Paisa Bazar\nMp nagar",style: TextStyle(fontSize: 17),),
                          SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                          Container(
                            height: MediaQuery.sizeOf(context).height*0.04,
                            width: MediaQuery.sizeOf(context).width*0.65 ,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue.shade100,),
                            child: Center(  child: Text("16,00,000 - 18,00,000 a year",style: TextStyle(color: Colors.black87),)),
                          ),
                          SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                          Row(
                            children: [
                              Container(
                                height: MediaQuery.sizeOf(context).height*0.03,
                                width: MediaQuery.sizeOf(context).width*0.30 ,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue.shade100,),
                                child: Center(  child: Text("Night-shift +1",style: TextStyle(color: Colors.black87),)),
                              ),SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                              Container(
                                height: MediaQuery.sizeOf(context).height*0.03,
                                width: MediaQuery.sizeOf(context).width*0.30 ,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue.shade100,),
                                child: Center(  child: Text("Night-shift +1",style: TextStyle(color: Colors.black87),)),
                              ),],
                          ),
                          SizedBox(height: MediaQuery.sizeOf(context).height*0.0,),
                         Container(
                           height: MediaQuery.sizeOf(context).height*0.04,
                           width: MediaQuery.sizeOf(context).width*0.4,
                           child: TextButton(onPressed: (){}, child:  Row(
                             children: [
                               Icon(CupertinoIcons.play_arrow_solid,color: Colors.black,size: 20,),
                               SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                               Text("Easy Apply",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                             ],),),
                         ),
                          Text("       Just Posted",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13),),
                      ],),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.30,
                    width: MediaQuery.sizeOf(context).width*0.9,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.blue.shade50,),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
                              Text("Associate - Corporate Relation\n& Partnership",style: TextStyle(fontSize: 17,
                                  fontWeight: FontWeight.bold),),
                              SizedBox(width: MediaQuery.sizeOf(context).width*0.050,),
                              Icon(CupertinoIcons.square_list_fill,color: Colors.black,size: 27,),
                              SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                              Icon(Icons.block_flipped,color: Colors.black,size: 30,)
                            ],),
                          Text("Paisa Bazar\nMp nagar",style: TextStyle(fontSize: 17),),
                          SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                          Container(
                            height: MediaQuery.sizeOf(context).height*0.04,
                            width: MediaQuery.sizeOf(context).width*0.65 ,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue.shade100,),
                            child: Center(  child: Text("16,00,000 - 18,00,000 a year",style: TextStyle(color: Colors.black87),)),
                          ),
                          SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                          Row(
                            children: [
                              Container(
                                height: MediaQuery.sizeOf(context).height*0.03,
                                width: MediaQuery.sizeOf(context).width*0.30 ,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue.shade100,),
                                child: Center(  child: Text("Night-shift +1",style: TextStyle(color: Colors.black87),)),
                              ),SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                              Container(
                                height: MediaQuery.sizeOf(context).height*0.03,
                                width: MediaQuery.sizeOf(context).width*0.30 ,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue.shade100,),
                                child: Center(  child: Text("Night-shift +1",style: TextStyle(color: Colors.black87),)),
                              ),],
                          ),
                          SizedBox(height: MediaQuery.sizeOf(context).height*0.0,),
                          Container(
                            height: MediaQuery.sizeOf(context).height*0.04,
                            width: MediaQuery.sizeOf(context).width*0.4,
                            child: TextButton(onPressed: (){}, child:  Row(
                              children: [
                                Icon(CupertinoIcons.play_arrow_solid,color: Colors.black,size: 20,),
                                SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                                Text("Easy Apply",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              ],),),
                          ),
                          Text("       Just Posted",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13),),
                        ],),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.30,
                    width: MediaQuery.sizeOf(context).width*0.9,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.blue.shade50,),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
                              Text("Associate - Corporate Relation\n& Partnership",style: TextStyle(fontSize: 17,
                                  fontWeight: FontWeight.bold),),
                              SizedBox(width: MediaQuery.sizeOf(context).width*0.050,),
                              Icon(CupertinoIcons.square_list_fill,color: Colors.black,size: 27,),
                              SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                              Icon(Icons.block_flipped,color: Colors.black,size: 30,)
                            ],),
                          Text("Paisa Bazar\nMp nagar",style: TextStyle(fontSize: 17),),
                          SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                          Container(
                            height: MediaQuery.sizeOf(context).height*0.04,
                            width: MediaQuery.sizeOf(context).width*0.65 ,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue.shade100,),
                            child: Center(  child: Text("16,00,000 - 18,00,000 a year",style: TextStyle(color: Colors.black87),)),
                          ),
                          SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                          Row(
                            children: [
                              Container(
                                height: MediaQuery.sizeOf(context).height*0.03,
                                width: MediaQuery.sizeOf(context).width*0.30 ,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue.shade100,),
                                child: Center(  child: Text("Night-shift +1",style: TextStyle(color: Colors.black87),)),
                              ),SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                              Container(
                                height: MediaQuery.sizeOf(context).height*0.03,
                                width: MediaQuery.sizeOf(context).width*0.30 ,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue.shade100,),
                                child: Center(  child: Text("Night-shift +1",style: TextStyle(color: Colors.black87),)),
                              ),],
                          ),
                          SizedBox(height: MediaQuery.sizeOf(context).height*0.0,),
                          Container(
                            height: MediaQuery.sizeOf(context).height*0.04,
                            width: MediaQuery.sizeOf(context).width*0.4,
                            child: TextButton(onPressed: (){}, child:  Row(
                              children: [
                                Icon(CupertinoIcons.play_arrow_solid,color: Colors.black,size: 20,),
                                SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                                Text("Easy Apply",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              ],),),
                          ),
                          Text("       Just Posted",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13),),
                        ],),
                    ),
                  ),
              ],),
            )
          ],
        ),
      ),
    );
  }
}
