import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color nssColor = Color.fromRGBO(237, 25, 40, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NSS Flutter'),
        backgroundColor: Color.fromRGBO(237, 25, 40, 1),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: nssColor,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.alarm,
                color: Colors.white,
              ),
              title: Text(
                'Schedule',
                style: TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              title: Text('Profile', style: TextStyle(color: Colors.white)),
            ),
          ]),
    );
  }
}
