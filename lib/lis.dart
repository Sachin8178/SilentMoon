import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(lis());
}

class lis extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('hi'),
              subtitle: Text('welcome to first page'),
              trailing: Icon(Icons.add),
              onTap: () {},
              tileColor: Colors.amber,
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('hi'),
              subtitle: Text('welcome to first page'),
              trailing: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
