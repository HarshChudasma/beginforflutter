import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
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
        drawer: Drawer(),
      );
  }
}