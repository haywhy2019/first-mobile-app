import 'package:flutter/material.dart';
import 'welcome.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.more_vert),
          //   tooltip: 'Open menu',
          //   onPressed: () {},
          // ),
          PopupMenuButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(
                child: Text('Cards'),
              ),
              const PopupMenuItem(
                child: Text('settings'),
              ),
              const PopupMenuItem(
                child: Text('Notices'),
              ),
              const PopupMenuItem(
                child: Text('Help'),
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Take a look",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
