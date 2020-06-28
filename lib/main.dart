import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: TabsView(),
      ),
      theme: ThemeData(primaryColor: Color.fromRGBO(237, 25, 40, 1)),
    );
  }
}

class TabsView extends StatelessWidget {
  Color nssColor = Color.fromRGBO(237, 25, 40, 1);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('NSS Flutter'),
          backgroundColor: nssColor,
        ),
        body: TabBarView(
          children: [
            new Container(
              child: Text('Pagina 1'),
            ),
            new Container(
              child: Text('Pagina 2'),
            ),
            new Container(
              child: Text('Pagina 3'),
            ),
          ],
        ),
        bottomNavigationBar: new BottomNavigationBar(
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
          ],
        ),
      ),
    );
  }
}
