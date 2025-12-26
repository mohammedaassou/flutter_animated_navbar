import 'package:flutter/material.dart';
import 'package:curved_app2/screens/animations_demo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), backgroundColor: Colors.pink),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Home",
              style: TextStyle(fontSize: 60, color: Colors.pink),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const AnimationsDemo()),
                );
              },
              child: const Text('Open animations demo'),
            ),
          ],
        ),
      ),
    );
  }
}
