import 'package:curved_app2/screens/Contact.dart';
import 'package:curved_app2/screens/Home.dart';
import 'package:curved_app2/screens/Info.dart';
import 'package:curved_app2/screens/Pictures.dart';
import 'package:curved_app2/screens/animations_demo.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Principalpage extends StatefulWidget {
  const Principalpage({super.key});

  @override
  State<Principalpage> createState() => _PrincipalpageState();
}

class _PrincipalpageState extends State<Principalpage> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List<Widget> screens = [
    Home(),
    Info(),
    Contact(),
    Pictures(),
    AnimationsDemo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.info, size: 30),
          Icon(Icons.local_library_rounded, size: 30),
          Icon(Icons.picture_as_pdf, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: screens[_page],
    );
  }
}
