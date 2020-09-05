import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(
      home: NavBar(),
      debugShowCheckedModeBanner: false,
    ));

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _page = 0;
  GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Nav Bar'),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(Icons.home),
          Icon(Icons.add),
          Icon(Icons.list),
        ],
        color: Colors.white,
        index: 0,
        key: _globalKey,
        height: 50.0,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index){
          setState(() {
            _page = index;
          });
        },
        
      ),
      body: Center(
        child: Text(_page.toString(),textScaleFactor: 10.0,),
      ),
    );
  }
}
