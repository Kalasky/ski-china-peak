import 'package:flutter/material.dart';

class StayAtThePeak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stay At The Peak'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Section 1: The Inn At China Peak'),
            Text('Section 2: Economy/Standard/Suites'),
          ],
        ),
      ),
    );
  }
}
