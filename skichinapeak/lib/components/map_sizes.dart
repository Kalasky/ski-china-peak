import 'package:flutter/material.dart';

class MapSizes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Size Variants'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('600x300_scale2_zoom17'),
                Image.asset('images/size_600x300_scale2_zoom17_map.png'),
                Text('400x400_scale2_zoom17'),
                Image.asset('images/size_400x400_scale2_zoom17_map.png'),
                Text('400x400_scale2_zoom18'),
                Image.asset('images/size_400x400_scale2_zoom18_map.png'),
                Text('600x300_scale2_zoom18'),
                Image.asset('images/size_600x300_scale2_zoom18_map.png'),
                Text('600x300_scale2_zoom19'),
                Image.asset('images/size_600x300_scale2_zoom19_map.png'),
                Text('400x400_scale2_zoom19'),
                Image.asset('images/size_400x400_scale2_zoom19_map.png'),
                Text('600x300_scale2_zoom20'),
                Image.asset('images/size_600x300_scale2_zoom20_map.png'),
                Text('400x400_scale2_zoom20'),
                Image.asset('images/size_400x400_scale2_zoom20_map.png'),
                Text('hybrid_400x400_scale2_zoom18'),
                Image.asset('images/hybrid_size_400x400_scale2_zoom18_map.png'),
                Text('hybrid_400x400_scale2_zoom19'),
                Image.asset('images/hybrid_size_400x400_scale2_zoom19_map.png'),
                Text('hybrid_400x400_scale2_zoom20'),
                Image.asset('images/hybrid_size_400x400_scale2_zoom20_map.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
