import 'package:flutter/material.dart';

class LessonsLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn to Ski/Ride'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Section 1: The Deal \$189 3-Day'),
            Text('Section 2: Benefits'),
            Text('Section 3: What to Expect\n\n'),
            Text('Purchase Tickets'),
            Text('Legal to Learn'),
            Text('Social Contact Info'),
          ],
        ),
      ),
    );
  }
}
