import 'package:flutter/material.dart';
import '../components/season_passes_card.dart';

class SeasonPasses extends StatefulWidget {
  @override
  _SeasonPassesState createState() => _SeasonPassesState();
}

class _SeasonPassesState extends State<SeasonPasses> {
  static int seniorPlusWinterRenewal,
      seniorWinterRenewal,
      adultWinterRenewal,
      twentyWinterRenewal,
      teenWinterRenewal,
      kidWinterRenewal,
      childWinterRenewal;
  static int seniorPlusNewHolder,
      seniorNewHolder,
      adultNewHolder,
      twentyNewHolder,
      teenNewHolder,
      kidNewHolder,
      childNewHolder;
  static int seniorPlusSpringDP,
      seniorSpringDP,
      adultSpringDP,
      twentySpringDP,
      teenSpringDP,
      kidSpringDP,
      childSpringDP;

  @override
  void initState() {
    super.initState();

    seniorPlusWinterRenewal = 1;
    seniorWinterRenewal = 1;
    adultWinterRenewal = 1;
    twentyWinterRenewal = 1;
    teenWinterRenewal = 1;
    kidWinterRenewal = 1;
    childWinterRenewal = 1;

    seniorPlusNewHolder = 1;
    seniorNewHolder = 1;
    adultNewHolder = 1;
    twentyNewHolder = 1;
    teenNewHolder = 1;
    kidNewHolder = 1;
    childNewHolder = 1;

    seniorPlusSpringDP = 1;
    seniorSpringDP = 1;
    adultSpringDP = 1;
    twentySpringDP = 1;
    teenSpringDP = 1;
    kidSpringDP = 1;
    childSpringDP = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Season Passes'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            /// Regular Pass Renewal From 2019/20 - Winter Season
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Regular Pass Renewal From 2019/20 - Winter Season',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SeasonPassCard(
                        'Senior Plus (70+)',
                        seniorPlusWinterRenewal,
                        seniorPlusWinterRenewal * 249,
                      ),
                      SeasonPassCard(
                        'Senior (65-69)',
                        seniorWinterRenewal,
                        seniorWinterRenewal * 365,
                      ),
                      SeasonPassCard(
                        'Adult (30-64)',
                        adultWinterRenewal,
                        adultWinterRenewal * 395,
                      ),
                      SeasonPassCard(
                        '20\'s 20-29',
                        twentyWinterRenewal,
                        twentyWinterRenewal * 229,
                      ),
                      SeasonPassCard(
                        'Teen (13-19)',
                        teenWinterRenewal,
                        teenWinterRenewal * 209,
                      ),
                      SeasonPassCard(
                        'Kid (6-12)',
                        kidWinterRenewal,
                        kidWinterRenewal * 109,
                      ),
                      SeasonPassCard(
                        'Child (5 & Under)',
                        childWinterRenewal,
                        childWinterRenewal = 30,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Regular Pass - New Passholder
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Regular Pass - New Passholder',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SeasonPassCard(
                        'Senior Plus (70+)',
                        seniorPlusNewHolder,
                        seniorPlusNewHolder * 339,
                      ),
                      SeasonPassCard(
                        'Senior (65-69)',
                        seniorNewHolder,
                        seniorNewHolder * 459,
                      ),
                      SeasonPassCard(
                        'Adult (30-64)',
                        adultNewHolder,
                        adultNewHolder * 509,
                      ),
                      SeasonPassCard(
                        '20\'s 20-29',
                        twentyNewHolder,
                        twentyNewHolder * 229,
                      ),
                      SeasonPassCard(
                        'Teen (13-19)',
                        teenNewHolder,
                        teenNewHolder * 209,
                      ),
                      SeasonPassCard(
                        'Kid (6-12)',
                        kidNewHolder,
                        kidNewHolder * 109,
                      ),
                      SeasonPassCard(
                        'Child (5 & Under)',
                        childNewHolder,
                        childNewHolder = 30,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Lock In Spring Rate With A Down Payment
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Lock In Spring Rate With A Down Payment',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SeasonPassCard(
                        'Senior Plus (70+)',
                        seniorPlusSpringDP,
                        seniorPlusSpringDP * 49,
                      ),
                      SeasonPassCard(
                        'Senior (65-69)',
                        seniorSpringDP,
                        seniorSpringDP * 49,
                      ),
                      SeasonPassCard(
                        'Adult (30-64)',
                        adultSpringDP,
                        adultSpringDP * 49,
                      ),
                      SeasonPassCard(
                        '20\'s 20-29',
                        twentySpringDP,
                        twentySpringDP * 49,
                      ),
                      SeasonPassCard(
                        'Teen (13-19)',
                        teenSpringDP,
                        teenSpringDP * 49,
                      ),
                      SeasonPassCard(
                        'Kid (6-12)',
                        kidSpringDP,
                        kidSpringDP * 49,
                      ),
                      SeasonPassCard(
                        'Child (5 & Under)',
                        childSpringDP,
                        childSpringDP = 49,
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
