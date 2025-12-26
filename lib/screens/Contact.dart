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
        title: Text("Contact"),
        backgroundColor: Colors.blueAccent,
      ),

      body: Center(child: Text("Contact", style: TextStyle(
          fontSize: 60, color: Colors.blueAccent
      ),),),
    );
  }
}
