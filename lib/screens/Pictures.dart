import 'package:flutter/material.dart';

class Pictures extends StatefulWidget {
  const Pictures({super.key});

  @override
  State<Pictures> createState() => _PicturesState();
}

class _PicturesState extends State<Pictures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pictures"),
        backgroundColor: Colors.orange,
      ),

      body: Center(child: Text("Pictures", style: TextStyle(
          fontSize: 60, color: Colors.orange
      ),),),
    );
  }
}
