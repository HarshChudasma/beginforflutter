import 'package:flutter/material.dart';
import 'package:flutter_demo1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catelog App"),
        ),
        body: Center(
          child: Container(
            child: Text("HI Guy's"),
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}