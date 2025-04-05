import 'package:flutter/material.dart';
import 'package:hademo1/pages/home.dart';
import 'package:hademo1/pages/loading.dart';
import 'package:hademo1/pages/result.dart';
import "variable.dart";


class Qthree extends StatefulWidget {
  const Qthree({super.key});

  @override
  State<Qthree> createState() => _QthreeState();
}

class _QthreeState extends State<Qthree> {
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
            child: Text("The Neolithic sites Kuchai and Golbai Sasan are located in which Indian state?",style: TextStyle(fontSize: 35.0,color: Colors.black87,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 20,),
          Container(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  press="Odisha";
                  score+=1;

                });
                setState(() async{

                  await Future.delayed(Duration(milliseconds: 60));
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Loading()));
                  await Future.delayed(Duration(seconds:2));
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Result()));
                });

              },
              child: Container(
                padding: EdgeInsets.all(20),
                height: 100,
                margin: EdgeInsets.all(40),
                alignment: Alignment.center,

                decoration: BoxDecoration(color: (press=="Odisha")?Colors.green:Colors.white,
                    borderRadius: BorderRadius.circular(50),

                    boxShadow: [BoxShadow(
                        blurRadius: 30,
                        color: Colors.grey
                    )]),
                child: Column(


                  children: [

                    Text("Odisha",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black87),),


                  ],
                ),

              ),
            ),
          ),
          SizedBox(height: 0,),
          Container(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  press="Maharashtra";

                });
                setState(() async{
                  await Future.delayed(Duration(milliseconds: 60));
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Loading()));
                  await Future.delayed(Duration(seconds:2));
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Result()));
                });

              },
              child: Container(
                padding: EdgeInsets.all(20),
                height: 100,
                margin: EdgeInsets.all(40),
                alignment: Alignment.center,

                decoration: BoxDecoration(color: press=="Maharashtra"?Colors.red:Colors.white,
                    borderRadius: BorderRadius.circular(50),

                    boxShadow: [BoxShadow(
                        blurRadius: 30,
                        color: Colors.grey
                    )]),
                child: Column(


                  children: [
                    Text("Maharashtra",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black87),),


                  ],
                ),

              ),
            ),
          ),









        ],
      ),


    );;
  }
}
