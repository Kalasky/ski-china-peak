import 'package:flutter/material.dart';
import '../components/rentals_card.dart';

class Rentals extends StatefulWidget {
  @override
  _RentalsState createState() => _RentalsState();
}

class _RentalsState extends State<Rentals> {
  /// All Day Adults (age 13+)
  static int adultAllDaySkisBootsPoles,
      adultAllDaySnowboardBoots,
      adultAllDaySkisPoles;

  /// Half Day Adults (age 13+)
  static int adultHalfDaySkisBootsPoles,
      adultHalfDaySnowboardBoots,
      adultHalfDaySkisPoles;

  /// All Day A La Carte Adults (age 13+)
  static int adultAllDayCarteSkisSnowboard,
      adultAllDayCarteSnowboardBoots,
      adultAllDayCarteSkiBoots,
      adultAllDayCarteSkiPoles;

  /// Half Day A La Carte Adults (age 13+)
  static int adultHalfDayCarteSkisSnowboard,
      adultHalfDayCarteSnowboardBoots,
      adultHalfDayCarteSkiBoots,
      adultHalfDayCarteSkiPoles;

  /// All Day  Child (ages 12 & under)
  static int childAllDaySkisBootsPoles, childAllDaySnowboardBoots;

  /// Half Day  Child (ages 12 & under)
  static int childHalfDaySkisBootsPoles, childHalfDaySnowboardBoots;

  /// All Day A La Carte Child (ages 12 & under)
  static int childAllDayCarteSkisSnowboard,
      childAllDayCarteSnowboardBoots,
      childAllDayCarteSkiBoots;

  /// Half Day A La Carte Child (ages 12 & under)
  static int childHalfDayCarteSkisSnowboard,
      childHalfDayCarteSnowboardBoots,
      childHalfDayCarteSkiBoots;

  /// Demos & Others All Day
  static int demoAllDaySkisSnowboardBoots,
      demoAllDaySnowBlades,
      demoAllDayHelmets;

  /// Demos & Others Half Day
  static int demoHalfDaySkisSnowboardBoots,
      demoHalfDaySnowBlades,
      demoHalfDayHelmets;

  /// Waxing
  static int handWax, graphiteHandWax, jetWax;

  /// Edging
  static int edgingBaseGrind, stoneGrind, handEdge;

  /// Repairs
  static int pTex, edge, replacementParts;

  /// Mounts
  static int skiBindingMounts, snowboardBindingMounts;
  @override
  void initState() {
    super.initState();

    /// All Day Adults (age 13+)
    adultAllDaySkisBootsPoles = 1;
    adultAllDaySnowboardBoots = 1;
    adultAllDaySkisPoles = 1;

    /// Half Day Adults (age 13+)
    adultHalfDaySkisBootsPoles = 1;
    adultHalfDaySnowboardBoots = 1;
    adultHalfDaySkisPoles = 1;

    /// All Day A La Carte Adults (age 13+)
    adultAllDayCarteSkisSnowboard = 1;
    adultAllDayCarteSnowboardBoots = 1;
    adultAllDayCarteSkiBoots = 1;
    adultAllDayCarteSkiPoles = 1;

    /// Half Day A La Carte Adults (age 13+)
    adultHalfDayCarteSkisSnowboard = 1;
    adultHalfDayCarteSnowboardBoots = 1;
    adultHalfDayCarteSkiBoots = 1;
    adultHalfDayCarteSkiPoles = 1;

    /// All Day  Child (ages 12 & under)
    childAllDaySkisBootsPoles = 1;
    childAllDaySnowboardBoots = 1;

    /// Half Day  Child (ages 12 & under)
    childHalfDaySkisBootsPoles = 1;
    childHalfDaySnowboardBoots = 1;

    /// All Day A La Carte Child (ages 12 & under)
    childAllDayCarteSkisSnowboard = 1;
    childAllDayCarteSnowboardBoots = 1;
    childAllDayCarteSkiBoots = 1;

    /// Half Day A La Carte Child (ages 12 & under)
    childHalfDayCarteSkisSnowboard = 1;
    childHalfDayCarteSnowboardBoots = 1;
    childHalfDayCarteSkiBoots = 1;

    /// Demos & Others All Day
    demoAllDaySkisSnowboardBoots = 1;
    demoAllDaySnowBlades = 1;
    demoAllDayHelmets = 1;

    /// Demos & Others Half Day
    demoHalfDaySkisSnowboardBoots = 1;
    demoHalfDaySnowBlades = 1;
    demoHalfDayHelmets = 1;

    /// Waxing
    handWax = 1;
    graphiteHandWax = 1;
    jetWax = 1;

    /// Edging
    edgingBaseGrind = 1;
    stoneGrind = 1;
    handEdge = 1;

    /// Repairs
    pTex = 1;
    edge = 1;
    replacementParts = 1;

    /// Mounts
    skiBindingMounts = 1;
    snowboardBindingMounts = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rentals'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            /// All Day Adults (age 13+)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'All Day Adults (age 13+)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RentalsCard(
                        'Skis, boots and poles',
                        adultAllDaySkisBootsPoles,
                        adultAllDaySkisBootsPoles * 51,
                      ),
                      RentalsCard(
                        'Snowboard and boots',
                        adultAllDaySnowboardBoots,
                        adultAllDaySnowboardBoots * 51,
                      ),
                      RentalsCard(
                        'Skis and poles',
                        adultAllDaySkisPoles,
                        adultAllDaySkisPoles * 46,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Half Day Adults (age 13+)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Half Day Adults (age 13+)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RentalsCard(
                        'Skis, boots and poles',
                        adultHalfDaySkisBootsPoles,
                        adultHalfDaySkisBootsPoles * 43,
                      ),
                      RentalsCard(
                        'Snowboard and boots',
                        adultHalfDaySnowboardBoots,
                        adultHalfDaySnowboardBoots * 43,
                      ),
                      RentalsCard(
                        'Skis and poles',
                        adultHalfDaySkisPoles,
                        adultHalfDaySkisPoles * 39,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// All Day A La Carte Adults (age 13+)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'All Day A La Carte Adults (age 13+)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RentalsCard(
                        'Skis or snowboard',
                        adultAllDayCarteSkisSnowboard,
                        adultAllDayCarteSkisSnowboard * 37,
                      ),
                      RentalsCard(
                        'Snowboard boots',
                        adultAllDayCarteSnowboardBoots,
                        adultAllDayCarteSnowboardBoots * 30,
                      ),
                      RentalsCard(
                        'Ski boots',
                        adultAllDayCarteSkiBoots,
                        adultAllDayCarteSkiBoots * 30,
                      ),
                      RentalsCard(
                        'Ski poles',
                        adultAllDayCarteSkiPoles,
                        adultAllDayCarteSkiPoles * 16,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Half Day A La Carte Adults (age 13+)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Half Day A La Carte Adults (age 13+)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RentalsCard(
                        'Skis or snowboard',
                        adultHalfDayCarteSkisSnowboard,
                        adultHalfDayCarteSkisSnowboard * 30,
                      ),
                      RentalsCard(
                        'Snowboard boots',
                        adultHalfDayCarteSnowboardBoots,
                        adultHalfDayCarteSnowboardBoots * 25,
                      ),
                      RentalsCard(
                        'Ski boots',
                        adultHalfDayCarteSkiBoots,
                        adultHalfDayCarteSkiBoots * 25,
                      ),
                      RentalsCard(
                        'Ski poles',
                        adultHalfDayCarteSkiPoles,
                        adultHalfDayCarteSkiPoles * 11,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// All Day  Child (ages 12 & under)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'All Day  Child (ages 12 & under)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RentalsCard(
                        'Skis, boots, and poles',
                        childAllDaySkisBootsPoles,
                        childAllDaySkisBootsPoles * 36,
                      ),
                      RentalsCard(
                        'Snowboard and boots',
                        childAllDaySnowboardBoots,
                        childAllDaySnowboardBoots * 36,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Half Day Child (ages 12 & under)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Half Day Child (ages 12 & under)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RentalsCard(
                        'Skis, boots, and poles',
                        childHalfDaySkisBootsPoles,
                        childHalfDaySkisBootsPoles * 29,
                      ),
                      RentalsCard(
                        'Snowboard and boots',
                        childHalfDaySnowboardBoots,
                        childHalfDaySnowboardBoots * 29,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// All Day A La Carte Child (ages 12 & under)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'All Day A La Carte Child (ages 12 & under)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RentalsCard(
                        'Skis or snowboard',
                        childAllDayCarteSkisSnowboard,
                        childAllDayCarteSkisSnowboard * 29,
                      ),
                      RentalsCard(
                        'Ski boots',
                        childAllDayCarteSkiBoots,
                        childAllDayCarteSkiBoots * 22,
                      ),
                      RentalsCard(
                        'Snowboard boots',
                        childAllDayCarteSnowboardBoots,
                        childAllDayCarteSnowboardBoots * 22,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Half Day A La Carte Child (ages 12 & under)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Half Day A La Carte Child (ages 12 & under)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RentalsCard(
                        'Skis or snowboard',
                        childHalfDayCarteSkisSnowboard,
                        childHalfDayCarteSkisSnowboard * 24,
                      ),
                      RentalsCard(
                        'Ski boots',
                        childHalfDayCarteSkiBoots,
                        childHalfDayCarteSkiBoots * 17,
                      ),
                      RentalsCard(
                        'Snowboard boots',
                        childHalfDayCarteSnowboardBoots,
                        childHalfDayCarteSnowboardBoots * 17,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Demos & Others All Day
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Demos & Others All Day',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RentalsCard(
                        'Demo ski and snowboard  w/boots',
                        demoAllDaySkisSnowboardBoots,
                        demoAllDaySkisSnowboardBoots * 82,
                      ),
                      RentalsCard(
                        'Snow Blades',
                        demoAllDaySnowBlades,
                        demoAllDaySnowBlades * 51,
                      ),
                      RentalsCard(
                        'Helmets',
                        demoAllDayHelmets,
                        demoAllDayHelmets * 10,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Demos & Others Half Day
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Demos & Others Half Day',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RentalsCard(
                        'Demo ski and snowboard  w/boots',
                        demoHalfDaySkisSnowboardBoots,
                        demoHalfDaySkisSnowboardBoots * 76,
                      ),
                      RentalsCard(
                        'Snow Blades',
                        demoHalfDaySnowBlades,
                        demoHalfDaySnowBlades * 43,
                      ),
                      RentalsCard(
                        'Helmets',
                        demoHalfDayHelmets,
                        demoHalfDayHelmets * 10,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Waxing
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Waxing',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RentalsCard(
                        'Edging/Base Grind',
                        handWax,
                        handWax * 15,
                      ),
                      RentalsCard(
                        'Stone Grind',
                        graphiteHandWax,
                        graphiteHandWax * 20,
                      ),
                      RentalsCard(
                        'Jet Wax',
                        jetWax,
                        jetWax * 10,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Edging
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Edging',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RentalsCard(
                        'Edging/Base Grind',
                        edgingBaseGrind,
                        edgingBaseGrind * 15,
                      ),
                      RentalsCard(
                        'Stone Grind',
                        stoneGrind,
                        stoneGrind * 30,
                      ),
                      RentalsCard(
                        'Hand Edge',
                        handEdge,
                        handEdge * 35,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Repairs
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Repairs',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RentalsCard(
                        'P-Tex',
                        pTex,
                        pTex * 10,
                      ),
                      RentalsCard(
                        'Edge',
                        edge,
                        edge * 40,
                      ),
                      RentalsCard(
                        'Replacement Parts',
                        replacementParts,
                        replacementParts * 5,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Mounts
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Mounts',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RentalsCard(
                        'Ski Binding Mounts',
                        skiBindingMounts,
                        skiBindingMounts * 50,
                      ),
                      RentalsCard(
                        'Snowboarding Binding Mounts',
                        snowboardBindingMounts,
                        snowboardBindingMounts * 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
