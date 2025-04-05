import 'package:flutter/material.dart';
import 'package:hademo1/pages/home.dart';
import 'package:hademo1/pages/qone.dart';
import "variable.dart";



class History extends StatefulWidget {
  const History({super.key});


  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  String press="";


  @override

  Widget build(BuildContext context) {
    double ht=MediaQuery.of(context).size.height;
    double wt=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));},
            child: Container(margin:EdgeInsets.only(top: 60,left:20),
              child:Icon(Icons.arrow_back_rounded,size: 35,color: Colors.black87,),),
          ),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.only(top: 0,left:20,right: 20),
            child: Text("Which Greek ambassador set up a pillar in honour of Vishnu?",style: TextStyle(fontSize: 33.0,color: Colors.black87,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 60,),
          GestureDetector(
            onTap: (){
              setState(() {
                press="Megasthenes";
                score+=1;


              });
              setState(() async{

                await Future.delayed(Duration(milliseconds: 60));
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Qone()));
              });

            },
            child: Container(
              padding: EdgeInsets.all(20),
              height: 100,
              margin: EdgeInsets.all(40),
              alignment: Alignment.center,

              decoration: BoxDecoration(color: (press=="Megasthenes")?Colors.green:Colors.white,
                  borderRadius: BorderRadius.circular(50),

                  boxShadow: [BoxShadow(
                      blurRadius: 20,
                      color: Colors.grey
                  )]),
              child: Column(


                children: [

                  Text("Megasthenes",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black87),),


                ],
              ),

            ),
          ),
          SizedBox(height: 2,),
          GestureDetector(
            onTap: (){
              setState(() {
                press="Shah Jahan";

              });
              setState(() async{

                await Future.delayed(Duration(milliseconds: 60));
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Qone()));
              });

            },
            child: Container(
              padding: EdgeInsets.all(20),
              height: 100,
              margin: EdgeInsets.all(40),
              alignment: Alignment.center,
            
              decoration: BoxDecoration(color: press=="Shah Jahan"?Colors.red:Colors.white,
                  borderRadius: BorderRadius.circular(50),
            
                  boxShadow: [BoxShadow(
                      blurRadius: 30,
                      color: Colors.grey
                  )]),
              child: Column(
            
            
                children: [
                  Text("Shah Jahan",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black87),),
            
            
                ],
              ),
            
            ),
          ),






        ],
      ),


    );
  }
}

