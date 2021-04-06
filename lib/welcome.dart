import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Welcome()));
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Welcome")),
        body: Center(child: Text("this is the first Screen")));
  }
}
