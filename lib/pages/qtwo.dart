import 'package:flutter/material.dart';
import 'package:hademo1/pages/home.dart';
import 'qthree.dart';
import "variable.dart";



class Qtwo extends StatefulWidget {
  const Qtwo({super.key});

  @override
  State<Qtwo> createState() => _QtwoState();
}

class _QtwoState extends State<Qtwo> {
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
            child: Container(margin:EdgeInsets.only(top: 50,left:20),
              child:Icon(Icons.arrow_back_rounded,size: 30,color: Colors.black87,),),
          ),
          SizedBox(height: 60,),
          Container(
            padding: EdgeInsets.only(top: 0,left: 20,right: 20),
            child: Text("What was the capital of Surasena Mahajanapada?",style: TextStyle(fontSize: 35.0,color: Colors.black87,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 20,),
          Container(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  press="Viratnagar";

                });
                setState(() async{

                  await Future.delayed(Duration(milliseconds: 60));
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Qthree()));
                });

              },
              child: Container(
                padding: EdgeInsets.all(20),
                height: 100,
                margin: EdgeInsets.all(40),
                alignment: Alignment.center,

                decoration: BoxDecoration(color: (press=="Viratnagar")?Colors.red:Colors.white,
                    borderRadius: BorderRadius.circular(50),

                    boxShadow: [BoxShadow(
                        blurRadius: 30,
                        color: Colors.grey
                    )]),
                child: Column(


                  children: [

                    Text("Viratnagar",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black87),),


                  ],
                ),

              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  press="Mathura";
                  score+=1;

                });
                setState(() async{

                  await Future.delayed(Duration(milliseconds: 60));
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Qthree()));
                });

              },
              child: Container(
                padding: EdgeInsets.all(20),
                height: 100,
                margin: EdgeInsets.all(40),
                alignment: Alignment.center,

                decoration: BoxDecoration(color: press=="Mathura"?Colors.green:Colors.white,
                    borderRadius: BorderRadius.circular(50),

                    boxShadow: [BoxShadow(
                        blurRadius: 30,
                        color: Colors.grey
                    )]),
                child: Column(


                  children: [
                    Text("Mathura",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black87),),


                  ],
                ),

              ),
            ),
          ),
          SizedBox(height: 10,),









        ],
      ),


    );
  }
}
