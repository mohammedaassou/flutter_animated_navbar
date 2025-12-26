import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info"),
        backgroundColor: Colors.indigo,
      ),

      body: Center(child: Text("Info", style: TextStyle(
          fontSize: 60, color: Colors.indigo
      ),),),
    );
  }
}
