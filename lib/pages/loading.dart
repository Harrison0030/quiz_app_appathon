import 'package:flutter/material.dart';
import 'package:hademo1/pages/home.dart';
import 'package:hademo1/pages/result.dart';
import "variable.dart";


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Transform.scale(
                  scale:3,

                  child: CircularProgressIndicator(

                    color: Colors.purple,
                    backgroundColor: Colors.white,


                  ),
                )

              ]
            ),
          ),
        ],
      ),
    );
  }
}
