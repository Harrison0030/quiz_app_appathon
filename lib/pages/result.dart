import 'package:flutter/material.dart';
import 'package:hademo1/pages/app.dart';
import 'package:hademo1/pages/home.dart';
import 'package:hademo1/pages/variable.dart';
import "variable.dart";

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    double ht=MediaQuery.of(context).size.height;
    double wt=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        padding: EdgeInsets.only(top: 70,),
        child: Column(


          children: [
            Container(
              margin: EdgeInsets.only(left:25),

              child: Row(


                children: [

                  IconButton(onPressed: (){
                    setState(() {
                      score=0;
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                    });
                  }, icon: Icon(Icons.home),color:Colors.white,iconSize: 40,)
                ],
              ),
            ),
              SizedBox(height: 20,),



              Container(
                child: Image.asset("lib/pages/fcong.png"),
              ),
            SizedBox(height: 20,),

            Column(

              children: [
                Stack(
                  children: [

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(


                          height: 150,
                          width: 300,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 20)]

                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Your Score is $score",style: TextStyle(color: Colors.purple,fontSize: 30,fontWeight: FontWeight.w600)),
                              
                            ],
                          )

                        ),
                      ],
                    ),
                 
                  ],
                )
                
              ],
            ),
            SizedBox.fromSize(size: Size(MediaQuery.of(context).size.height,MediaQuery.of(context).size.width),child:Image.asset("lib/pages/you.png"),)






          ],
          
        ),
      ),
    );
  }
}
