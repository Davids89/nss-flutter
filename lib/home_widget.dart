import 'package:flutter/material.dart';
import 'package:nosoloflutter/screens/worker_list_widget.dart';
import 'view_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  // Las variables final se asignan y no se vuelven a cambiar
  final List<Widget> _children = [
    View('Vista 1'),
    WorkerListWidget(),
    View('Vista 3')
  ];

  Color _nssColor = Color.fromRGBO(237, 25, 40, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NSS Flutter'),
        backgroundColor: Color.fromRGBO(237, 25, 40, 1),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        backgroundColor: _nssColor,
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
              Icons.business_center,
              color: Colors.white,
            ),
            title: Text(
              'Mates',
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
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
