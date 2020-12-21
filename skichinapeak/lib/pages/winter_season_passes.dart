import 'package:flutter/material.dart';

class WinterSeasonPasses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Winter Season Passes'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Section 1: Rates & Details'),
            Text('Section 2: Peak Pass Guarantee'),
            Text('Section 3: The Black Pass / Powder Alliance'),
            Text('Section 4: Regular Pass Benefits'),
            Text('Section 5: Important Information\n\n'),
            Text('Season Pass Prices'),
            Text('Passes/Benefits'),
            Text('Pass Form / Waiver (EZ Waive)'),
          ],
        ),
      ),
    );
  }
}
