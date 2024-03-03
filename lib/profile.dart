// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field

import 'dart:convert';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nav/usermodel.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final custome_color=true;

    bool _customTileExpanded = false;

   late dynamic userinfo ;
  Future<Usermodel> getCommentsApi() async {
    final response =
        await http.get(Uri.parse('https://mocki.io/v1/021223a5-3c86-4b0c-8941-013c5d6a6c3e'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        userinfo=Usermodel.fromJson(i);
      }
      return userinfo;
    } else {
      return userinfo;
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
backgroundColor:Colors.blueAccent,
        title: Text("HRMS"  ,style: TextStyle(color:Colors.white ,fontWeight:FontWeight.bold),),
        actions: [
          IconButton(onPressed: () {},color: Colors.white, icon: Icon(Icons.search)),
          IconButton(onPressed: () {},color: Colors.white, icon: Icon(Icons.notifications_active)),
          IconButton(onPressed: () {},color: Colors.white, icon: Icon(Icons.logout_sharp)),
        ],
),
body:Center(
  child: FutureBuilder(future: getCommentsApi(), 
          builder: (context,snapshot)
          {
           if (snapshot.hasData) {
                  return Column(
            // mainAxisAlignment: MainAxisAlignment.
            children: [
              Container(
                // decoration: BoxDecoration(color:Colors.amber),
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 150,
  
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipOval(
                      // radius: 100,
                      child:Image.network(userinfo.image, height: 180,width: 120,fit: BoxFit.fill),
                    
                    ),
                    DottedLine(
                      direction: Axis.vertical,
                      lineThickness: 3,
                      dashLength: 11,
                      dashColor: Colors.black,
                      dashGradient: [Colors.red, Colors.blue],
                      dashGapLength: 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userinfo.name.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text("Age:",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text( userinfo.age.toString(),
                               ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Dob:",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text  ( userinfo.birthDate.toString(),
  ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Gender:",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text( userinfo.gender.toString(),
                                ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("PhoneNo:",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text( userinfo.phone.toString(),
                                ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Cell:",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text( userinfo.cell.toString(),
                             ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              DottedLine(
                direction: Axis.horizontal,
                lineThickness: 3,
                dashLength: 11,
                dashColor: Colors.black,
                dashGradient: [Colors.red, Colors.blue],
                dashGapLength: 4,
              ),
  
              Card(
                 shadowColor: Colors.black12,
      elevation: 11,
                child: ExpansionTile(
                  title: Text("Contact Infomation"),
                  backgroundColor: Colors.blueAccent,
                  collapsedBackgroundColor
                  :_customTileExpanded
                ? Colors.blueAccent
                :  Colors.blueAccent,  
                        onExpansionChanged: (bool expanded) {
            setState(() {
              _customTileExpanded = expanded;
              
            });
          },
                  // leading: (Icon(C)),
                  children: [
                    Card(
                       shadowColor: Colors.black12,
      elevation: 11,
                      child: ListTile(
                        
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -2),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Phone No:",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold)),
                                  Text( userinfo.phone.toString(),
                                    ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Email:",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold)),
                                  Text( userinfo.email.toString(),
                                     ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Cell:",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold)),
                                  Text( userinfo.cell.toString(),
                                     ),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Card(
                child: ExpansionTile(
                      backgroundColor: Colors.blueAccent,
                  collapsedBackgroundColor
                  :_customTileExpanded
                ? Colors.blueAccent
                :  Colors.blueAccent,  
                  title: Text("Address"),
                  // collapsedBackgroundColor: Colors.blue,
                  children: [
                    Card(
                      child: ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -2),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Address:",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold)),
                                  Text( userinfo.address.toString(),
                                     ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("State:",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold)),
                                  Text( userinfo.state.toString(),
                                      ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Country:",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold)),
                                  Text( userinfo.city.toString(),
                                     ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("PostCode:",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold)),
                                  Text( userinfo.postalCode.toString(),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              )
              //
            ],
          );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
  
                // By default, show a loading spinner.
                return const 

                
                
                
                CircularProgressIndicator();
              
          }),
) 
        
        
        
        
    );
  }
}