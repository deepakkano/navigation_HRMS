// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  var light=false;
  @override
  Widget build(BuildContext context) {
 return Scaffold(

      appBar: AppBar(title: Text("Setting",style: TextStyle(color:Colors.white ,fontWeight:FontWeight.bold),),
        backgroundColor:Colors.blueAccent,
),


body: Container(
  width: double.infinity,
  height: double.infinity,
  // color:Colors.lightBlue,
  child: Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
    
    children: [
     Card(
    
     child: ListTile(
      leading: Icon(Icons.settings),
      subtitle: Text("Language settings"),
      title: Text("General"),
            trailing: Icon(Icons.keyboard_arrow_right),

     ),
     ),
    
     Card(
      shadowColor: Colors.black12,
      elevation: 11,
     child: ListTile(
      leading: Icon(Icons.colorize),
          subtitle: Text("Change app mode setting"),
          title: Text("Thems"),
           trailing:Switch(
      // This bool value toggles the switch.
      value: light,
      
      thumbColor: const MaterialStatePropertyAll<Color>(Colors.black),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    )

      
     ),
     ),
    
     Card(
     child: ListTile(
      leading: Icon(Icons.privacy_tip_outlined),
      subtitle: Text("Accounts setting"),
           trailing: Icon(Icons.keyboard_arrow_right),

      title: Text("Privacy"),
     ),
     ),
    
     Card(
     child: ListTile(
      leading: Icon(Icons.logout_outlined),
      subtitle: Text("Logout form app"),
      title: Text("Logout"),
      trailing: Icon(Icons.keyboard_arrow_right),
     ),
     ),
    
    
    
    ],
    
    
    
    
    ),
  ),
),


    );  }
}