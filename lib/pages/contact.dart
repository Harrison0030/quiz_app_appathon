import 'package:flutter/material.dart';
class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Details "),
      ),
      body:Container(
        margin: EdgeInsets.only(left: 20,top: 50,right: 20),
        child: Column(

          children: [
            Image.asset("lib/pages/details.jpg")

          ],
        ),
      ),
    );
  }
}
