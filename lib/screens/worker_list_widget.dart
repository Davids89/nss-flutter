import 'package:flutter/material.dart';
import 'package:nosoloflutter/models/worker.dart';

class WorkerListWidget extends StatelessWidget {
  List<Worker> _workers = [
    Worker(name: 'Nombre 1'),
    Worker(name: 'Nombre 2'),
    Worker(name: 'Nombre 3')
  ];

  Column createWorkerListItems() {
    List<Widget> _workersWidgets = [];

    _workersWidgets = _workers.map((worker) {
      return Row(
        children: <Widget>[
          Icon(
            Icons.account_circle,
            size: 80,
          ),
          Center(
            child: Text(
              worker.name,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      );
    }).toList();

    return Column(
      children: _workersWidgets,
    );
  }

  @override
  Widget build(BuildContext context) {
    createWorkerListItems();
    return ListView(
      children: <Widget>[
        Container(
          child: createWorkerListItems(),
        )
      ],
    );
  }
}
