import 'package:flutter/material.dart';
import 'package:hademo1/pages/home.dart';
import "variable.dart";


class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top:100),
            margin: EdgeInsets.all(30),
            child: Image.asset("lib/pages/intrologo.png"),
          ),
          SizedBox(height: 150,),

          
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            },
            child: Container(
              padding: EdgeInsets.all(20),
              height: 80,
              width: 300, decoration: BoxDecoration(border: Border.all(color: Colors.blue,width: 3),borderRadius: BorderRadius.circular(20),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 30,color: Colors.purple)]),
              child: Row(

                children: [
                  Text("Get Started!",style: TextStyle(fontSize: 25,color: Colors.purple,fontWeight: FontWeight.bold)),
                  SizedBox(width: 60,),

                  Icon(Icons.arrow_circle_right_outlined,size: 40,color: Colors.purple,)
                ],
              ),

            ),
          )
        ],
      ),
      

    );
  }
}
