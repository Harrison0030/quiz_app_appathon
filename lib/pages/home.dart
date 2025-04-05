import 'package:flutter/material.dart';
import 'package:hademo1/pages/History.dart';
import 'package:hademo1/pages/contact.dart';
import "variable.dart";



class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(




      drawer: Drawer(

        elevation: 20.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
                currentAccountPicture:CircleAvatar(backgroundImage:AssetImage("lib/pages/as.png")),
                accountName: Text("Sona_Appathon"),
                accountEmail: Text("quizapp.gmail.com")),

            ListTile(

              leading: Icon(Icons.topic_outlined,color: Colors.redAccent,),
              title: Text("Topics",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
              onTap: (){
                Navigator.pop(context);

              },

            ),
            Divider(height: 5),
            ListTile(
              leading: Icon(Icons.contact_phone,color: Colors.redAccent,),
              title: Text("Contact",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Contact()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Quiz App",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.orange,
        elevation: 100.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.green,Colors.yellowAccent])
          ),
        ),
      ),


      body: ListView(
        children: [
          GestureDetector(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>History()));
              });
            },
            child: Container(

              padding: EdgeInsets.all(25),
              height: 200,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.red,Colors.orange],),
              borderRadius: BorderRadius.circular(50),

              boxShadow: [BoxShadow(
                blurRadius: 30,
                color: Colors.grey
              )]
              ),
              child: Column(


                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("History",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white54),),
                  Text("Ready..",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white54),),
                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end
                      ,
                      children: [
                        Container(
                            child:Icon(Icons.play_circle_outline_outlined,color: Colors.white54,size: 50,)
                        ),


                      ],
                    ),
                  )

                ],
              ),


            ),
          ),
          Container(

            padding: EdgeInsets.all(25),
            height: 200,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.blueAccent,Colors.blue],),
                borderRadius: BorderRadius.circular(50),

                boxShadow: [BoxShadow(
                    blurRadius: 30,
                    color: Colors.grey
                )]),
            child: Column(


              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Geography",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white54),),
                Text("In Process....",style: TextStyle(fontSize: 20,color: Colors.white54),),

                Container(

                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.end
                    ,
                    children: [

                      Icon(Icons.play_circle_outline_outlined,color: Colors.white54,size: 50,)
                    ],
                  ),
                )

              ],
            ),

          ),
          Container(
            padding: EdgeInsets.all(25),
            height: 200,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple,Colors.indigo],),
                borderRadius: BorderRadius.circular(50),

                boxShadow: [BoxShadow(
                    blurRadius: 30,
                    color: Colors.grey
                )]),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Physics",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white54),),
                Text("In Process....",style: TextStyle(fontSize: 20,color: Colors.white54),),
                Container(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end
                    ,
                    children: [
                      Icon(Icons.play_circle_outline_outlined,color: Colors.white54,size: 50,)
                    ],
                  ),
                )

              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(25),
            height: 200,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.green,Colors.greenAccent],),
                borderRadius: BorderRadius.circular(50),

                boxShadow: [BoxShadow(
                    blurRadius: 30,
                    color: Colors.grey
                )]),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("English",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white54),),
                Text("In Process....",style: TextStyle(fontSize: 20,color: Colors.white54),),
                Container(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end
                    ,
                    children: [
                      Icon(Icons.play_circle_outline_outlined,color: Colors.white54,size: 50,)
                    ],
                  ),
                )

              ],
            ),

          )


        ],


      )
      );

  }
}
