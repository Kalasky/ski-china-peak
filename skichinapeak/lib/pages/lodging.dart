import 'package:flutter/material.dart';
import '../components/lodging_card.dart';

class Lodging extends StatefulWidget {
  @override
  _LodgingState createState() => _LodgingState();
}

class _LodgingState extends State<Lodging> {
  /// H at end of variable = holiday
  /// NH at end of variable = non-holiday

  /// Economy Holiday
  static int econ1DayBedH,
      econ1DayBed1TwinH,
      econ1QueenSlopeViewH,
      econ1Queen2EuroSleepersH,
      econ2Queen1TwinH,
      econ1Queen1TwinSlopeViewH,
      econ3QueenH,
      econ2Queen1TwinSlopeViewH;

  /// Economy Non-Holiday
  static int econ1DayBedNH,
      econ1DayBed1TwinNH,
      econ1QueenSlopeViewNH,
      econ1Queen2EuroSleepersNH,
      econ2Queen1TwinNH,
      econ1Queen1TwinSlopeViewNH,
      econ3QueenNH,
      econ2Queen1TwinSlopeViewNH;

  /// Standard
  static int standard1QueenH,
      standard1QueenSlopeViewH,
      standard2QueenH,
      standard2QueenSlopeViewH;

  /// Standard Non-Holiday
  static int standard1QueenNH,
      standard1QueenSlopeViewNH,
      standard2QueenNH,
      standard2QueenSlopeViewNH;

  /// Standard w/ King Holiday
  static int standardWithKing1KingSlopeViewH,
      standardWithKing1King1Bunk1DaybedSlopeViewH;

  /// Standard w/ King Non-Holiday
  static int standardWithKing1KingSlopeViewNH,
      standardWithKing1King1Bunk1DaybedSlopeViewNH;

  /// Suite Holiday
  static int suiteSlopeViewH;

  /// Suite Non-Holiday
  static int suiteSlopeViewNH;

  /// Two Bedroom Suite Holiday
  static int twobedroomsuiteSlopeViewH;

  /// Two Bedroom Suite Non-Holiday
  static int twobedroomsuiteSlopeViewNH;

  @override
  void initState() {
    super.initState();

    /// Economy Holiday
    econ1DayBedH = 1;
    econ1DayBed1TwinH = 1;
    econ1QueenSlopeViewH = 1;
    econ1Queen2EuroSleepersH = 1;
    econ2Queen1TwinH = 1;
    econ1Queen1TwinSlopeViewH = 1;
    econ3QueenH = 1;
    econ2Queen1TwinSlopeViewH = 1;

    /// Economy Non-Holiday
    econ1DayBedNH = 1;
    econ1DayBed1TwinNH = 1;
    econ1QueenSlopeViewNH = 1;
    econ1Queen2EuroSleepersNH = 1;
    econ2Queen1TwinNH = 1;
    econ1Queen1TwinSlopeViewNH = 1;
    econ3QueenNH = 1;
    econ2Queen1TwinSlopeViewNH = 1;

    /// Standard Holiday
    standard1QueenH = 1;
    standard1QueenSlopeViewH = 1;
    standard2QueenH = 1;
    standard2QueenSlopeViewH = 1;

    /// Standard Non-Holiday
    standard1QueenNH = 1;
    standard1QueenSlopeViewNH = 1;
    standard2QueenNH = 1;
    standard2QueenSlopeViewNH = 1;

    /// Standard w/ King Holiday
    standardWithKing1KingSlopeViewH = 1;
    standardWithKing1King1Bunk1DaybedSlopeViewH = 1;

    /// Standard w/ King Non-Holiday
    standardWithKing1KingSlopeViewNH = 1;
    standardWithKing1King1Bunk1DaybedSlopeViewNH = 1;

    /// Suite Holiday
    suiteSlopeViewH = 1;

    /// Suite Non-Holiday
    suiteSlopeViewNH = 1;

    /// Two Bedroom Suite Holiday
    twobedroomsuiteSlopeViewH = 1;

    /// Two Bedroom Suite Non-Holiday
    twobedroomsuiteSlopeViewNH = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lodging'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            /// Economy Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Economy Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LodgingCard(
                        '1 Day Bed',
                        econ1DayBedH,
                        econ1DayBedH * 99,
                      ),
                      LodgingCard(
                        '1 Day Bed - 1 Twin',
                        econ1DayBed1TwinH,
                        econ1DayBed1TwinH * 156,
                      ),
                      LodgingCard(
                        '1 Queen - Slope View',
                        econ1QueenSlopeViewH,
                        econ1QueenSlopeViewH * 163,
                      ),
                      LodgingCard(
                        '1 Queen - 2 Euro Sleepers',
                        econ1Queen2EuroSleepersH,
                        econ1Queen2EuroSleepersH * 176,
                      ),
                      LodgingCard(
                        '2 Queen - 1 Twin',
                        econ2Queen1TwinH,
                        econ2Queen1TwinH * 189,
                      ),
                      LodgingCard(
                        '1 Queen, 1 Twin, Slope View',
                        econ1Queen1TwinSlopeViewH,
                        econ1Queen1TwinSlopeViewH * 191,
                      ),
                      LodgingCard(
                        '3 Queen',
                        econ3QueenH,
                        econ3QueenH * 200,
                      ),
                      LodgingCard(
                        '2 Queen, 1 Twin, Slope View',
                        econ2Queen1TwinSlopeViewH,
                        econ2Queen1TwinSlopeViewH * 200,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Economy Non-Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Economy Non-Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LodgingCard(
                        '1 Day Bed',
                        econ1DayBedNH,
                        econ1DayBedNH * 99,
                      ),
                      LodgingCard(
                        '1 Day Bed - 1 Twin',
                        econ1DayBed1TwinNH,
                        econ1DayBed1TwinNH * 142,
                      ),
                      LodgingCard(
                        '1 Queen - Slope View',
                        econ1QueenSlopeViewNH,
                        econ1QueenSlopeViewNH * 148,
                      ),
                      LodgingCard(
                        '1 Queen - 2 Euro Sleepers',
                        econ1Queen2EuroSleepersNH,
                        econ1Queen2EuroSleepersNH * 160,
                      ),
                      LodgingCard(
                        '2 Queen - 1 Twin',
                        econ2Queen1TwinNH,
                        econ2Queen1TwinNH * 172,
                      ),
                      LodgingCard(
                        '1 Queen, 1 Twin, Slope View',
                        econ1Queen1TwinSlopeViewNH,
                        econ1Queen1TwinSlopeViewNH * 174,
                      ),
                      LodgingCard(
                        '3 Queen',
                        econ3QueenNH,
                        econ3QueenNH * 182,
                      ),
                      LodgingCard(
                        '2 Queen, 1 Twin, Slope View',
                        econ2Queen1TwinSlopeViewNH,
                        econ2Queen1TwinSlopeViewNH * 182,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Standard Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Standard Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LodgingCard(
                        '1 Queen',
                        standard1QueenH,
                        standard1QueenH * 192,
                      ),
                      LodgingCard(
                        '1 Queen - Slope View',
                        standard1QueenSlopeViewH,
                        standard1QueenSlopeViewH * 192,
                      ),
                      LodgingCard(
                        '2 Queen',
                        standard2QueenH,
                        standard2QueenH * 239,
                      ),
                      LodgingCard(
                        '2 Queen - Slope View',
                        standard2QueenSlopeViewH,
                        standard2QueenSlopeViewH * 249,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Standard Non-Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Standard Non-Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LodgingCard(
                        '1 Queen',
                        standard1QueenNH,
                        standard1QueenNH * 172,
                      ),
                      LodgingCard(
                        '1 Queen -Slope View',
                        standard1QueenSlopeViewNH,
                        standard1QueenSlopeViewNH * 172,
                      ),
                      LodgingCard(
                        '2 Queen',
                        standard2QueenNH,
                        standard2QueenNH * 217,
                      ),
                      LodgingCard(
                        '2 Queen - Slope View',
                        standard2QueenSlopeViewNH,
                        standard2QueenSlopeViewNH * 227,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Standard Room With King Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Standard Room With King Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LodgingCard(
                        '1 King - Slope View',
                        standardWithKing1KingSlopeViewH,
                        standardWithKing1KingSlopeViewH * 227,
                      ),
                      LodgingCard(
                        '1 King, 1 Bunk, 1 Day Bed, and Slope View',
                        standardWithKing1King1Bunk1DaybedSlopeViewH,
                        standardWithKing1King1Bunk1DaybedSlopeViewH * 261,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Standard Room With King Non-Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Standard Room With King Non-Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LodgingCard(
                        '1 King - Slope View',
                        standardWithKing1KingSlopeViewNH,
                        standardWithKing1KingSlopeViewNH * 207,
                      ),
                      LodgingCard(
                        '1 King, 1 Bunk, 1 Day Bed, and Slope View',
                        standardWithKing1King1Bunk1DaybedSlopeViewNH,
                        standardWithKing1King1Bunk1DaybedSlopeViewNH * 238,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Suite Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Suite Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LodgingCard(
                        'Slope View - Max Occupancy 4 People',
                        suiteSlopeViewH,
                        suiteSlopeViewH * 279,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Suite Non-Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Suite Non-Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LodgingCard(
                        'Slope View - Max Occupancy 4 People',
                        suiteSlopeViewNH,
                        suiteSlopeViewNH * 259,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Two Bedroom Suite Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Two Bedroom Suite Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LodgingCard(
                        'Slope View - Max Occupancy 4 People',
                        twobedroomsuiteSlopeViewH,
                        twobedroomsuiteSlopeViewH * 309,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Two Bedroom Suite Non-Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Two Bedroom Suite Non-Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LodgingCard(
                        'Slope View - Max Occupancy 4 People',
                        twobedroomsuiteSlopeViewNH,
                        twobedroomsuiteSlopeViewNH * 279,
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
