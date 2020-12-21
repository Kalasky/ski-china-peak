import 'package:flutter/material.dart';

//class Map extends StatefulWidget {
//  @override
//  _MapState createState() => _MapState();
//}
//
//class _MapState extends State<Map> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Google Map'),
//      ),
//      body: GoogleMap(
//        initialCameraPosition: CameraPosition(
//          target: LatLng(37.2364, -119.1574),
//          zoom: 12,
//        ),
//      ),
//    );
//  }
//}

// map view types
class RoadMap extends StatelessWidget {
  /*
  roadmap: https://maps.googleapis.com/maps/api/staticmap
  ?center=China+Peak+Mountain+Resort
  &maptype=roadmap
  &size=600x300
  &zoom=17&scale=2
  &style=feature:road
  |color:black
  |visibility:simplified
  &key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Image.asset('images/roadmap.jpeg'),
            ),
          ],
        ),
      ),
    );
  }
}

class TerrainMap extends StatelessWidget {
  /*
  terrain map: https://maps.googleapis.com/maps/api/staticmap
  ?center=China+Peak+Mountain+Resort
  &maptype=terrain
  &size=600x300
  &zoom=17&scale=2
  &style=feature:road
  |color:black
  |visibility:simplified
  &key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/terrain_map.png')],
      ),
    );
  }
}

class HybridMap extends StatelessWidget {
  /*
  hybrid map: https://maps.googleapis.com/maps/api/staticmap
  ?center=China+Peak+Mountain+Resort
  &maptype=hybrid
  &size=600x300
  &zoom=17&scale=2
  &style=feature:road
  |color:black
  |visibility:simplified
  &key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/hybrid_map.png')],
      ),
    );
  }
}

// custom image marker module
class CustomMarkerMap extends StatelessWidget {
  /*
  Custom Marker: http://maps.googleapis.com/maps/api/staticmap
  ?center=China+Peak+Mountain+Resort
  &markers=anchor:37.2364,%20-119.1574
  |icon:https://developers.google.com/maps/documentation/maps-static/images/tram.png
  |China+Peak+Mountain+Resort
  &maptype=roadmap
  &size=600x300
  &scale=2
  &key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/custom_marker_map.png')],
      ),
    );
  }
}

// marker modules
class RedMarkerMap extends StatelessWidget {
  /*
 marker red: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:red%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/red_marker_map.png')],
      ),
    );
  }
}

class BlackMarkerMap extends StatelessWidget {
  /*
marker black: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:black%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/black_marker_map.png')],
      ),
    );
  }
}

class BrownMarkerMap extends StatelessWidget {
  /*
marker brown: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:brown%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/brown_marker_map.png')],
      ),
    );
  }
}

class GreenMarkerMap extends StatelessWidget {
  /*
marker green: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:green%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/green_marker_map.png')],
      ),
    );
  }
}

class PurpleMarkerMap extends StatelessWidget {
  /*
marker purple: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:purple%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/purple_marker_map.png')],
      ),
    );
  }
}

class YellowMarkerMap extends StatelessWidget {
  /*
marker yellow: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:yellow%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/yellow_marker_map.png')],
      ),
    );
  }
}

class BlueMarkerMap extends StatelessWidget {
  /*
marker blue: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:blue%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/blue_marker_map.png')],
      ),
    );
  }
}

class GrayMarkerMap extends StatelessWidget {
  /*
marker gray: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:gray%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/gray_marker_map.png')],
      ),
    );
  }
}

class OrangeMarkerMap extends StatelessWidget {
  /*
marker orange: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:orange%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/orange_marker_map.png')],
      ),
    );
  }
}

class WhiteMarkerMap extends StatelessWidget {
  /*
marker white: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:white%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/white_marker_map.png')],
      ),
    );
  }
}

// size modules
class TinyMarkerMap extends StatelessWidget {
  /*
marker tiny: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=size:tiny%7Ccolor:red%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/tiny_marker_map.png')],
      ),
    );
  }
}

class SmallMarkerMap extends StatelessWidget {
  /*
marker small: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=size:small%7Ccolor:red%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/small_marker_map.png')],
      ),
    );
  }
}

class MidMarkerMap extends StatelessWidget {
  /*
marker mid: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=size:mid%7Ccolor:red%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/mid_marker_map.png')],
      ),
    );
  }
}

// path modules
class BlackPathMap extends StatelessWidget {
  /*
black path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:black|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/black_path_map.png')],
      ),
    );
  }
}

class BrownPathMap extends StatelessWidget {
  /*
brown path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:brown|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/brown_path_map.png')],
      ),
    );
  }
}

class GreenPathMap extends StatelessWidget {
  /*
green path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:green|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/green_path_map.png')],
      ),
    );
  }
}

class PurplePathMap extends StatelessWidget {
  /*
purple path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:purple|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/purple_path_map.png')],
      ),
    );
  }
}

class YellowPathMap extends StatelessWidget {
  /*
yellow path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:yellow|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/yellow_path_map.png')],
      ),
    );
  }
}

class BluePathMap extends StatelessWidget {
  /*
blue path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:blue|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/blue_path_map.png')],
      ),
    );
  }
}

class GrayPathMap extends StatelessWidget {
  /*
gray path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:gray|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/gray_path_map.png')],
      ),
    );
  }
}

class OrangePathMap extends StatelessWidget {
  /*
orange path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:orange|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/orange_path_map.png')],
      ),
    );
  }
}

class RedPathMap extends StatelessWidget {
  /*
red path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:red|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/red_path_map.png')],
      ),
    );
  }
}

class WhitePathMap extends StatelessWidget {
  /*
white path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:white|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/white_path_map.png')],
      ),
    );
  }
}

// size variants
class Size600x300Scale2Zoom17Map extends StatelessWidget {
  /*
 size=600x300 scale=2 zoom=17: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&zoom=17&scale=2&style=feature:road|color:black|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset('images/size_600x300_scale2_zoom17_map.png')
        ],
      ),
    );
  }
}

class Size400x400Scale2Zoom17Map extends StatelessWidget {
  /*
 size=400x400 scale=2 zoom=17: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=400x400&zoom=17&scale=2&style=feature:road|color:black|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset('images/size_400x400_scale2_zoom17_map.png')
        ],
      ),
    );
  }
}

class Size400x400Scale2Zoom18Map extends StatelessWidget {
  /*
 size=400x400 scale=2 zoom=18: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=400x400&zoom=18&scale=2&style=feature:road|color:black|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset('images/size_400x400_scale2_zoom18_map.png')
        ],
      ),
    );
  }
}

// custom path
class CustomPathMap extends StatelessWidget {
  /*
custom path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&path=color:0x0000ff|weight:5|37.236423,%20-119.157805|37.236257,%20-119.157613|37.236228,%20-119.157413|37.236280,%20-119.157002&maptype=hybrid&size=400x400&zoom=17&scale=2&style=feature:road|color:black|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Image.asset('images/custom_path_map.png')],
      ),
    );
  }
}

/*
References:
marker red C label example: &markers=color:red%7Clabel:C%7C37.2364,-119.1574

marker black: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:black%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
marker brown: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:brown%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
marker green: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:green%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
marker purple: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:purple%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
marker yellow: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:yellow%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
marker blue: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:blue%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
marker gray: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:gray%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
marker orange: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:orange%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
marker red: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:red%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
marker white: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&markers=color:white%7C37.2364,-119.1574&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:0xff0000|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM

black path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:black|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
brown path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:brown|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
green path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:green|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
purple path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:purple|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
yellow path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:yellow|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
blue path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:blue|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
gray path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:gray|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
orange path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:orange|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
red path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:red|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM
white path: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&scale=2&style=feature:road|color:white|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM

 scale=2 zoom=17: https://maps.googleapis.com/maps/api/staticmap?center=China+Peak+Mountain+Resort&maptype=roadmap&size=600x300&zoom=17&scale=2&style=feature:road|color:black|visibility:simplified&key=AIzaSyADHw0wD-x1XE46F4A22bj3yL6tpU7c8BM

custom path: path=color:0x0000ff|weight:5|37.236423, -119.157805|37.236257, -119.157613|37.236228, -119.157413|37.236280, -119.157002
 */

/*
Quick Access Documentation:
- The markers parameter takes set of value assignments (marker descriptors) of the following format:
  markers=markerStyles|markerLocation1| markerLocation2|... etc.
  These locations may be either specified as latitude/longitude values or as addresses. These locations are separated using the pipe character (|).

- style information must appear first in any marker descriptor

- Marker Style: https://developers.google.com/maps/documentation/maps-static/dev-guide#MarkerStyles

- custom image size requirement: dimensions must be 64x64 or smaller

- The following list shows the approximate level of detail you can expect to see at each zoom level:
    1: World
    5: Landmass/continent
    10: City
    15: Streets
    20: Buildings

 */
