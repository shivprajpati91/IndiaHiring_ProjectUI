import 'package:flutter/material.dart';
class profile1 extends StatefulWidget {
  const profile1({super.key});
  @override
  State<profile1> createState() => _profile1State();}
class _profile1State extends State<profile1> {

  final List<String> _options = ['    Employee', '    Recuiter', '   Admin'];
  String? _selectedOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(title:Row(
        children: [
          SizedBox(width: MediaQuery.sizeOf(context).width*0.19,),
          Text("My Profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.blue.shade700),),
          SizedBox(width: MediaQuery.sizeOf(context).width*0.17,),
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right_alt_sharp,size: 30,color: Colors.blue.shade700,),)
        ],),backgroundColor: Colors.white,),
      drawer: Drawer(),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
              Stack(
                children:[ ClipRRect(borderRadius: BorderRadius.circular(100),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height*0.21,
                    width: MediaQuery.sizeOf(context).width*0.5,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white,border: Border.all(color: Colors.blue)),

                    child: CircleAvatar(child: Icon(Icons.person,size: 100,color: Colors.blue,),backgroundColor: Colors.white,),
                  ),
                ),Positioned(right: 3,bottom:10,child:IconButton(onPressed:(){},icon:Icon(Icons.edit,size: 30,color: Colors.blue,)))]
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
              Container(
                height: MediaQuery.sizeOf(context).height*0.50,
                width: MediaQuery.sizeOf(context).width*0.9,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height*0.05,
                            width: MediaQuery.sizeOf(context).width*0.43,
                            color: Colors.white,
                            child:   TextFormField(decoration: InputDecoration(hintText: "First name",hintStyle: TextStyle(color: Colors.blue.shade400),
                              prefixIcon: Icon(Icons.drive_file_rename_outline,color: Colors.black,size: 14,),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),),),
                          ),),
                        SizedBox(width: MediaQuery.sizeOf(context).width*0.035,),
                        ClipRRect(borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height*0.05,
                            width: MediaQuery.sizeOf(context).width*0.43,
                            color: Colors.white,
                            child:   TextFormField(decoration: InputDecoration(hintText: "Last name",hintStyle: TextStyle(color: Colors.blue.shade400),
                              // prefixIcon: Icon(Icons,color: Colors.white,size: 14,),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),),),
                          ),),],),
                    SizedBox( height: MediaQuery.sizeOf(context).height*0.02,),
                    ClipRRect(borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: MediaQuery.sizeOf(context).height*0.05,
                        width: MediaQuery.sizeOf(context).width*0.9,
                        color: Colors.white,
                        child:  TextFormField(decoration: InputDecoration(hintText: "Email address",hintStyle: TextStyle(color:Colors.blue.shade400),
                          prefixIcon: Icon(Icons.email,color: Colors.black,size: 14,),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),),),
                      ),
                    ),
                    SizedBox( height: MediaQuery.sizeOf(context).height*0.02,),
                    ClipRRect(borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: MediaQuery.sizeOf(context).height*0.05,
                        width: MediaQuery.sizeOf(context).width*0.9,
                        color: Colors.white,
                        child:   TextFormField(decoration: InputDecoration(hintText: "Phone no.",hintStyle: TextStyle(color:Colors.blue.shade400),
                          prefixIcon: Icon(Icons.phone,color: Colors.black,size: 14,),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),),),
                      ),
                    ),
                    SizedBox( height: MediaQuery.sizeOf(context).height*0.02,),
                    ClipRRect(borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: MediaQuery.sizeOf(context).height*0.05,
                        width: MediaQuery.sizeOf(context).width*0.9,
                        color: Colors.white,
                        child:   TextFormField(decoration: InputDecoration(hintText: "Password",hintStyle: TextStyle(color:Colors.blue.shade400),
                          prefixIcon: Icon(Icons.password,color: Colors.black,size: 14,),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),),),
                      ),
                    ),
                    SizedBox( height: MediaQuery.sizeOf(context).height*0.02,),
                    ClipRRect(borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: MediaQuery.sizeOf(context).height*0.05,
                        width: MediaQuery.sizeOf(context).width*0.9,
                        color: Colors.white,
                        child:   TextFormField(decoration: InputDecoration(hintText: "Re-Password",hintStyle: TextStyle(color:Colors.blue.shade400),
                          prefixIcon: Icon(Icons.password,color: Colors.black,size: 14,),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),),),
                      ),
                    ),
                    SizedBox( height: MediaQuery.sizeOf(context).height*0.02,),
                    ClipRRect(borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: MediaQuery.sizeOf(context).height*0.05,
                        width: MediaQuery.sizeOf(context).width*0.9,
                       decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                        child: DropdownButton<String>(
                          
                          value: _selectedOption, // Selected value
                          hint: Text("     Account type"),// Placeholder
                          items: _options.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option,style: TextStyle(color: Colors.blue.shade400),),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedOption = newValue; // Update selected value
                            });
                          },
                        ),
                      ),
                    ),SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
                    Container(
                        height: MediaQuery.sizeOf(context).height*0.045,
                      width: MediaQuery.sizeOf(context).width*0.4,
                      child: TextButton(onPressed: (){}, child:Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20,
                          fontWeight: FontWeight.w600),),
                        style: TextButton.styleFrom(backgroundColor: Colors.blue),),)
                  ],
                )),
            ],),
        ),),
    );}
}
