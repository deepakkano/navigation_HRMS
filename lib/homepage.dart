import 'package:flutter/material.dart';
import 'package:nav/main.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
   var Date = DateTime.now();

  var co;
 void initState() {
    super.initState();
    
    check_Color();
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
      body:
      
      
       Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,

          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/gear.png"),
                  opacity: 0.1,
                  alignment: Alignment.topRight,
                  fit: BoxFit.cover)),

          // color: Colors.greenAccent,

          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.all(10),
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: co,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/leave.png"),
                        width: 50,
                        height: 40,
                      ),
                      Text(
                        "Leave",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: co,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/schedule.png"),
                        width: 50,
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          "  Attendance Regularization",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.lightBlueAccent,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/calendar.png"),
                        width: 50,
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Attendance Calendar",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.lightBlueAccent,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/qr-code.png"),
                        width: 50,
                        height: 40,
                      ),
                      Text(
                        "Qr Code",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.lightBlueAccent,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/trade.png"),
                        width: 50,
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "     Item Transaction",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlueAccent,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/price-list.png"),
                        width: 50,
                        height: 40,
                      ),
                      Text(
                        "Salary Slip",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlueAccent,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/dish.png"),
                        width: 50,
                        height: 40,
                      ),
                      Text(
                        "Canteen menu",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
            ],
          ),
        ),
       ),
    );
  }


   void check_Color() {

      if (Date.day>=15) {
      co = Colors.lightBlueAccent;
    } else {
      co = Colors.grey;
    }
  
  }



}