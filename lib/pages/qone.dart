import 'package:flutter/material.dart';
import 'package:hademo1/pages/home.dart';
import 'package:hademo1/pages/qtwo.dart';
import 'package:hademo1/pages/variable.dart';

class Qone extends StatefulWidget {
  const Qone({super.key});

  @override
  State<Qone> createState() => _QoneState();
}

class _QoneState extends State<Qone> {
  String press="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          GestureDetector(
            onTap: (){
              setState(() {
                score=0;
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              });
            },
            child: Container(margin:EdgeInsets.only(top: 60,left:20),
              child:Icon(Icons.arrow_back_rounded,size: 35,color: Colors.black87,),),
          ),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.only(top: 0,left: 20,right: 20),
            child: Text("Who was the brother-in-law of Harshavardhan ?",style: TextStyle(fontSize: 35.0,color: Colors.black87,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                press="Banabhatta";

              });
              setState(() async{

                await Future.delayed(Duration(milliseconds: 60));
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Qtwo()));
              });

            },
            child: Container(
              padding: EdgeInsets.all(20),
              height: 100,
              margin: EdgeInsets.all(40),
              alignment: Alignment.center,

              decoration: BoxDecoration(color: (press=="Banabhatta")?Colors.red:Colors.white,
                  borderRadius: BorderRadius.circular(50),

                  boxShadow: [BoxShadow(
                      blurRadius: 30,
                      color: Colors.grey
                  )]),
              child: Column(


                children: [

                  Text("Banabhatta",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black87),),


                ],
              ),

            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              setState(() {
                press="Grahavarmana";
                score+=1;

              });
              setState(() async{

                await Future.delayed(Duration(milliseconds: 60));
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Qtwo()));
              });

            },
            child: Container(
              padding: EdgeInsets.all(20),
              height: 100,
              margin: EdgeInsets.all(40),
              alignment: Alignment.center,

              decoration: BoxDecoration(color: press=="Grahavarmana"?Colors.green:Colors.white,
                  borderRadius: BorderRadius.circular(50),

                  boxShadow: [BoxShadow(
                      blurRadius: 30,
                      color: Colors.grey
                  )]),
              child: Column(


                children: [
                  Text("Grahavarmana",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black87),),


                ],
              ),

            ),
          ),








        ],
      ),


    );;
  }
}


