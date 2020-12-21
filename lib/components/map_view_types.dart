import 'package:flutter/material.dart';

class MapViewTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map View Types'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('Roadmap View'),
                Image.asset('images/roadmap.jpeg'),
                Text('Hybrid View'),
                Image.asset('images/hybrid_map.png'),
                Text('Terrain View'),
                Image.asset('images/terrain_map.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
