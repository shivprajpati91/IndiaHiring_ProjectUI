import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../Postedjobs.dart';
import '../../settings/settings.dart';
import '../List.dart';
import '../home_screen.dart';
class bottomnavigation2 extends StatefulWidget {
  const bottomnavigation2({super.key});
  @override
  State<bottomnavigation2> createState() => _bottomnavigation2State();
}
class _bottomnavigation2State extends State<bottomnavigation2> {
  var _selectedindex=0;

  static const List<Widget> screen = [homescreen(),postedjobs(),  list1() ,  ];
  void  _bootomnavclick(int index){
    setState(() {
      _selectedindex=index;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(width: MediaQuery.sizeOf(context).width*0.16,),
            Text("IndiaHirings",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.18,),
            IconButton(onPressed: (){

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>settings1()));
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

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue.shade50,
        items: <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(
            backgroundColor: Colors.black38,
            icon:Icon(Icons.home,weight: 100,color: Colors.black,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black38,
            icon: Icon(Icons.search,color:Colors.black),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black38,
            icon: Icon(Icons.notifications_active_outlined,color: Colors.black),
            label: 'Notification',),
        ],
        selectedFontSize: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedindex,
        unselectedFontSize: 20,
        onTap: _bootomnavclick,),
      body:  Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                topRight: Radius.circular(30)),
            color: Colors.white),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: screen.elementAt(_selectedindex),
        ),
      ),
    );
  }}
