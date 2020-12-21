import 'package:flutter/material.dart';
import '../components/group_rates_card.dart';

class GroupRates extends StatefulWidget {
  @override
  _GroupRatesState createState() => _GroupRatesState();
}

class _GroupRatesState extends State<GroupRates> {
  static int seniorPlusSat,
      seniorSat,
      adultSat,
      twentySat,
      teenSat,
      kidSat,
      childSat;
  static int seniorPlusSun,
      seniorSun,
      adultSun,
      twentySun,
      teenSun,
      kidSun,
      childSun;
  static int seniorPlusMF, seniorMF, adultMF, twentyMF, teenMF, kidMF, childMF;

  @override
  void initState() {
    super.initState();

    seniorPlusSat = 1;
    seniorSat = 1;
    adultSat = 1;
    twentySat = 1;
    teenSat = 1;
    kidSat = 1;
    childSat = 1;

    seniorPlusSun = 1;
    seniorSun = 1;
    adultSun = 1;
    twentySun = 1;
    teenSun = 1;
    kidSun = 1;
    childSun = 1;

    seniorPlusMF = 1;
    seniorMF = 1;
    adultMF = 1;
    twentyMF = 1;
    teenMF = 1;
    kidMF = 1;
    childMF = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Rates'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            /// Saturday Group Rates
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Saturday\n(25% off regular rates)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      GroupRateCard(
                        'Senior Plus (70+)',
                        seniorPlusSat,
                        seniorPlusSat * 55,
                      ),
                      GroupRateCard(
                        'Senior (65-69)',
                        seniorSat,
                        seniorSat * 64,
                      ),
                      GroupRateCard(
                        'Adult (30-64)',
                        adultSat,
                        adultSat * 74,
                      ),
                      GroupRateCard(
                        '20\'s 20-29',
                        twentySat,
                        twentySat * 55,
                      ),
                      GroupRateCard(
                        'Teen (13-19)',
                        teenSat,
                        teenSat * 51,
                      ),
                      GroupRateCard(
                        'Kid (6-12)',
                        kidSat,
                        kidSat * 33,
                      ),
                      GroupRateCard(
                        'Child (5 & Under)',
                        childSat,
                        childSat = 0,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Sunday Group Rates
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Sunday\n(35% off regular rates)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      GroupRateCard(
                        'Senior Plus (70+)',
                        seniorPlusSun,
                        seniorPlusSun * 48,
                      ),
                      GroupRateCard(
                        'Senior (65-69)',
                        seniorSun,
                        seniorSun * 55,
                      ),
                      GroupRateCard(
                        'Adult (30-64)',
                        adultSun,
                        adultSun * 64,
                      ),
                      GroupRateCard(
                        '20\'s 20-29',
                        twentySun,
                        twentySun * 48,
                      ),
                      GroupRateCard(
                        'Teen (13-19)',
                        teenSun,
                        teenSun * 44,
                      ),
                      GroupRateCard(
                        'Kid (6-12)',
                        kidSun,
                        kidSun * 29,
                      ),
                      GroupRateCard(
                        'Child (5 & Under)',
                        childSun,
                        childSun = 0,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Monday - Friday Group Rates
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Monday - Friday\n(45% off regular rates)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      GroupRateCard(
                        'Senior Plus (70+)',
                        seniorPlusMF,
                        seniorPlusMF * 41,
                      ),
                      GroupRateCard(
                        'Senior (65-69)',
                        seniorMF,
                        seniorMF * 47,
                      ),
                      GroupRateCard(
                        'Adult (30-64)',
                        adultMF,
                        adultMF * 54,
                      ),
                      GroupRateCard(
                        '20\'s 20-29',
                        twentyMF,
                        twentyMF * 41,
                      ),
                      GroupRateCard(
                        'Teen (13-19)',
                        teenMF,
                        teenMF * 37,
                      ),
                      GroupRateCard(
                        'Kid (6-12)',
                        kidMF,
                        kidMF * 24,
                      ),
                      GroupRateCard(
                        'Child (5 & Under)',
                        childMF,
                        childMF = 0,
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
