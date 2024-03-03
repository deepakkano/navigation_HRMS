// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Password",style: TextStyle(color: Colors.white),),
              backgroundColor:Colors.blueAccent,
),


body:Center(
  child: Container(
    padding: EdgeInsets.all(20),
    width:double.infinity,
    height: 400,
    // color: Colors.black12,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
       Text("Change Your Password" ,style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),),
       TextField(
  decoration:  InputDecoration(
    label: Text("Current Password"),
    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
  ),),    TextField(
  decoration:  InputDecoration(
    label: Text("New Password"),
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))

  ),),    TextField(
  decoration:  InputDecoration(
    label: Text("Confirm PassWord"),
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))

  ),),
  
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ElevatedButton(onPressed: (){}, child:Text("Reset")),
      ElevatedButton(onPressed: (){}, child:Text("Forget password"))

    ],
  )
      ],
    ),
  ),
),


    );
  }
}