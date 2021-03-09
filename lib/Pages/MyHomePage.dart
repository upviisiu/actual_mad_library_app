import 'package:actual_mad_library_app/Dependencies/BookCollector.dart';
import 'package:actual_mad_library_app/Pages/StorePage.dart';
import 'package:actual_mad_library_app/Pages/UserLibrary.dart';
import 'package:actual_mad_library_app/widgets/HomeMenuItems.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'UserLastRead.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //BookCollector.getBook();

    return Container(
      color: Colors.blue[100],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: new GridView.count(
          crossAxisSpacing: 30,
          mainAxisSpacing: 12,
          crossAxisCount: 1,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StorePage()));
              },
              child: Text('Store'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserLastRead()));
              },
              child: Text('Last Read Book'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserLibrary()));
              },
              child: Text('My Library'),
            ),
          ],
        ),
      ),
    );
  }
}
