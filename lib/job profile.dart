import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class jobprifle extends StatefulWidget {
  const jobprifle({super.key});

  @override
  State<jobprifle> createState() => _jobprifleState();
}

final PageController _pageController = PageController();

  // Method to navigate to the page at a specific index
  void _goToPage(int index) {
  // You can use either animateToPage() or jumpToPage()
  _pageController.animateToPage(
    index,
    duration: Duration(milliseconds: 300),
    curve: Curves.easeInOut,
  );
}
  class _jobprifleState extends State<jobprifle> {
  @override
  List<Map<String, dynamic>> users=[];

  //
  // @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchData();
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(

        child: Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height*0.055,),
            Row(
              children: [
                SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                CircleAvatar(backgroundColor: Colors.blue.shade100,child: Icon(Icons.person,color: Colors.black,)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("     Hello Shiv",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    Text("      Your job is waiting for you ",style: TextStyle(fontSize: 13,
                        fontWeight: FontWeight.w400),),
                  ],
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.26,),

                IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined,color: Colors.blue[900],size: 30,),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.sizeOf(context).height*0.18,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    boxShadow: [BoxShadow(
                      color: Colors.blue.shade100,blurRadius: 50,
                    )],borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome!",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white),),
                      SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                      Text("Find Your Perfect Job",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,
                        color: Colors.white,),),
                      SizedBox(height: MediaQuery.sizeOf(context).height*0.025,),
                      Container(
                        height: MediaQuery.sizeOf(context).height*0.05,
                          width: MediaQuery.sizeOf(context).width*0.8,
                          child: SearchBar(leading: Icon(Icons.search,color: Colors.blue.shade200,),hintText:"What are You Looking for?",))
                    ],
                  ),
                ),

              ),
            ),

            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,

              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.1,
                    width: MediaQuery.sizeOf(context).width,

                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue.shade50,boxShadow: [BoxShadow(
                              color: Colors.blue.shade50,offset: Offset(-10,5,),blurRadius: 10
                          )]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Row(
                              children: [
                                SizedBox(width: MediaQuery.sizeOf(context).width*0.02 ,),
                                Container(
                                  height: MediaQuery.sizeOf(context).height*0.05,
                                  width: MediaQuery.sizeOf(context).width*0.32,
                                  decoration:BoxDecoration(

                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      _goToPage(0); // Navigate to the first page (index 0)
                                    },
                                    child: Text("Applicatons",style: TextStyle(color: Colors.black87),),
                                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white,
                                      elevation: 10,overlayColor: Colors.red,),
                                  ),
                                ),
                                SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                                // Button to navigate to the second page (index 1)
                                ElevatedButton(
                                  onPressed: () {
                                    _goToPage(1); // Navigate to the second page (index 1)
                                  },
                                  child: Text("Shortlisted",style: TextStyle(color: Colors.black87),),
                                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,),
                                ),
                                SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                                ElevatedButton(
                                  onPressed: () {
                                    _goToPage(2); // Navigate to the second page (index 1)
                                  },
                                  child: Text("New",style: TextStyle(color: Colors.black87),),
                                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white,
                                      elevation: 10,overlayColor: Colors.red),
                                ),],
                            ),),
                        ),),
                    ),),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                  // eView widget to display the pages
                  Expanded(
                    child: PageView(
                      controller: _pageController, // Attach the controller here
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0,left: 5,right: 5),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height,
                            width: MediaQuery.sizeOf(context).width,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(60),
                                    topLeft: Radius.circular(60)),
                                color: Colors.blue.shade100
                            ),
                            child:
                            ListView.builder(

                              itemBuilder: (BuildContext ctx, int index) {
                                final  user=users[index];

                                final companyname = user['hiring_company_name'];
                              final companytitle = user['job_title']['title'];
                                final cityname = user['city']['name'];
                                final job = user['job_type'];
                                final jobshift = user['job_shift'];
                                final state = user ['state']['name'];
                                final worktype = user ['work_location_type'];
                                // final salary = user ['salary_min_amount'];

                                return Padding(
                                  padding: const EdgeInsets.only(top: 15.0,left: 15,right: 15),
                                  child: Container(

                                      height: MediaQuery.sizeOf(context).height*0.2,
                                      width: MediaQuery.sizeOf(context).width,

                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
                                          color: Colors.blue.shade50),

                                      child:Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 12.0),
                                            child: Container(
                                              height: MediaQuery.sizeOf(context).height,
                                              width: MediaQuery.sizeOf(context).width*0.65,


                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                                                  Text(companytitle.toString(),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 21),),
                                                  SizedBox(height: MediaQuery.sizeOf(context).height*0.008,),
                                                  Text(companyname,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black54)),
                                                  SizedBox(height: MediaQuery.sizeOf(context).height*0.009,),
                                                  Row(
                                                    children: [
                                                      Text(cityname,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19,
                                                          color: Colors.black87)),
                                                      SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
                                                      Text(state,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19,
                                                          color: Colors.black87)),
                                                    ],
                                                  ),

                                                  SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),

                                                  Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: MediaQuery.sizeOf(context).height*0.040,
                                                        width: MediaQuery.sizeOf(context).width*0.22,
                                                        decoration: BoxDecoration(boxShadow: [
                                                          BoxShadow(
                                                              color: Colors.black12,offset: Offset(5, 10),blurRadius: 10
                                                          )]),
                                                        child: TextButton(onPressed: (){}, child: Text(job,style:
                                                        TextStyle(color: Colors.black87),),style: TextButton.styleFrom(
                                                          backgroundColor: Colors.green.shade50,),),
                                                      ),
                                                      SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
                                                      Container(
                                                        height: MediaQuery.sizeOf(context).height*0.040,
                                                        width: MediaQuery.sizeOf(context).width*0.21,
                                                        decoration: BoxDecoration(boxShadow: [
                                                          BoxShadow(

                                                              color: Colors.black12,offset: Offset(5, 10),blurRadius: 10
                                                          )]),
                                                        child: TextButton(onPressed: (){}, child: Text(jobshift,style:
                                                        TextStyle(color: Colors.black87),),style: TextButton.styleFrom(

                                                          backgroundColor: Colors.pink.shade50,),),
                                                      ),
                                                      SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
                                                      Container(
                                                        height: MediaQuery.sizeOf(context).height*0.040,
                                                        width: MediaQuery.sizeOf(context).width*0.20,
                                                        decoration: BoxDecoration(boxShadow: [
                                                          BoxShadow(

                                                              color: Colors.black12,offset: Offset(5, 10),blurRadius: 10
                                                          )]),
                                                        child: TextButton(onPressed: (){}, child: Text(worktype,style:
                                                        TextStyle(color: Colors.black87),),style: TextButton.styleFrom(

                                                          backgroundColor: Colors.purple.shade50,),),
                                                      ),
                                                    ],),
                                                ],),
                                            ),),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20.0,bottom: 10),
                                            child: Container(
                                            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                                            //     color: Colors.blue.shade100),
                                              height: MediaQuery.sizeOf(context).height,
                                              width: MediaQuery.sizeOf(context).width*0.2,
                                              child: Center(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(right: 0.0),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      SizedBox(height: MediaQuery.sizeOf(context).height*0.014,),

                                                      IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.white,),
                                                        style: IconButton.styleFrom(backgroundColor: Colors.pink.shade200,),),

                                                      SizedBox(height: MediaQuery.sizeOf(context).height*0.019,),

                                                      IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline,color: Colors.white,),
                                                        style: IconButton.styleFrom(backgroundColor: Colors.blue.shade900,),),
                                                    ],
                                                  ),),),
                                            ),),
                                        ],)
                                  ),
                                );}, itemCount:users.length,
                            ),
                          ),),
                        Padding(
                            padding: const EdgeInsets.only(top: 15.0,left: 15,right: 15),
                            child: Container(
                              height: MediaQuery.sizeOf(context).height*0.2,
                              width: MediaQuery.sizeOf(context).width,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
                                  color: Colors.orange.shade100),)),
                        Padding(
                            padding: const EdgeInsets.only(top: 15.0,left: 15,right: 15),

                            child: Container(
                              height: MediaQuery.sizeOf(context).height*0.2,
                              width: MediaQuery.sizeOf(context).width,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
                                  color: Colors.deepPurple.shade100),)),
                      ],
                    ),), // Button to navigate to the first page (index 0)
                ],),
            ),
          ],),
    );}
  void _fetchData() async {
    String accessToken = '631|pDlsXUzQA5q78FvcfXfQSnO1fZm3q4wIXUVj0xTRc59ab989';

    try {
      final response = await http.get(
        Uri.parse('https://abhiquicks.in/employer/jobs?status=active'),
        headers: {
          'Authorization': 'Bearer $accessToken', // Ensure your token is correct
        },
      );
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        // Assuming the key "response" contains the list of users
        if (body['response'] != null) {
          setState(() {
            users= List<Map<String,dynamic>>.from(body['response']['data'],);
          });
        } else {
          print('Key "response" not found in the API response.');
        }
      } else {
        print('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }}
}