import 'package:flutter/material.dart';
import '../components/summer_card.dart';

class Summer extends StatefulWidget {
  @override
  _SummerState createState() => _SummerState();
}

class _SummerState extends State<Summer> {
  /// NH at end of variable = non-holiday

  /// Summer Lodging
  /// Economy Non-Holiday
  static int econ1DayBedNH,
      econ1DayBed1TwinNH,
      econ1QueenSlopeViewNH,
      econ1Queen2EuroSleepersNH,
      econ2Queen1TwinNH,
      econ1Queen1TwinSlopeViewNH,
      econ3QueenNH,
      econ2Queen1TwinSlopeViewNH;

  /// Standard Non-Holiday
  static int standard1QueenNH,
      standard1QueenSlopeViewNH,
      standard2QueenNH,
      standard2QueenSlopeViewNH;

  /// Standard w/ King Non-Holiday
  static int standardWithKing1KingNH,
      standardWithKing1KingSlopeViewNH,
      standardWithKing1King1Bunk1DaybedSlopeViewNH;

  /// Suite Non-Holiday
  static int suiteSlopeViewNH;

  /// Two Bedroom Suite Non-Holiday
  static int twobedroomsuiteSlopeViewNH;

  /// Scenic Rides & Mountain Biking
  /// 2020 Bike Park Season Pass Rates
  static int adultBikeParkSeasonPass,
      twentyBikeParkSeasonPass,
      teenBikeParkSeasonPass,
      kidBikeParkSeasonPass;

  /// 2020 Bike Park Rates All Day
  static int adultAllDayBikePark,
      twentyAllDayBikePark,
      teenAllDayBikePark,
      kidAllDayBikePark;

  /// 2020 Bike Park Rates Half Day
  static int adultHalfDayBikePark,
      twentyHalfDayBikePark,
      teenHalfDayBikePark,
      kidHalfDayBikePark;

  /// 2020 Bike Park Season Pass Rates
  static int allDayBikeRentalSummerPassRentals,
      insuranceSummerPassRentals,
      halfDayBikeRentalSummerPassRentals,
      fullFaceHelmetSummerPassRentals;

  @override
  void initState() {
    super.initState();

    /// Economy Non-Holiday
    econ1DayBedNH = 1;
    econ1DayBed1TwinNH = 1;
    econ1QueenSlopeViewNH = 1;
    econ1Queen2EuroSleepersNH = 1;
    econ2Queen1TwinNH = 1;
    econ1Queen1TwinSlopeViewNH = 1;
    econ3QueenNH = 1;
    econ2Queen1TwinSlopeViewNH = 1;

    /// Standard Non-Holiday
    standard1QueenNH = 1;
    standard1QueenSlopeViewNH = 1;
    standard2QueenNH = 1;
    standard2QueenSlopeViewNH = 1;

    /// Standard w/ King Non-Holiday
    standardWithKing1KingNH = 1;
    standardWithKing1KingSlopeViewNH = 1;
    standardWithKing1King1Bunk1DaybedSlopeViewNH = 1;

    /// Suite Non-Holiday
    suiteSlopeViewNH = 1;

    /// Two Bedroom Suite Non-Holiday
    twobedroomsuiteSlopeViewNH = 1;

    /// 2020 Bike Park Season Pass Rates
    adultBikeParkSeasonPass = 1;
    twentyBikeParkSeasonPass = 1;
    teenBikeParkSeasonPass = 1;
    kidBikeParkSeasonPass = 1;

    /// 2020 Bike Park Season Pass Rates All Day
    adultAllDayBikePark = 1;
    twentyAllDayBikePark = 1;
    teenAllDayBikePark = 1;
    kidAllDayBikePark = 1;

    /// 2020 Bike Park Season Pass Rates Half Day
    adultHalfDayBikePark = 1;
    twentyHalfDayBikePark = 1;
    teenHalfDayBikePark = 1;
    kidHalfDayBikePark = 1;

    /// 2020 Bike Park Season Pass Rates
    allDayBikeRentalSummerPassRentals = 1;
    insuranceSummerPassRentals = 1;
    halfDayBikeRentalSummerPassRentals = 1;
    fullFaceHelmetSummerPassRentals = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summer'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
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
                      SummerCard(
                        '1 Day Bed',
                        econ1DayBedNH,
                        econ1DayBedNH * 115,
                      ),
                      SummerCard(
                        '1 Day Bed - 1 Twin',
                        econ1DayBed1TwinNH,
                        econ1DayBed1TwinNH * 118,
                      ),
                      SummerCard(
                        '1 Queen - Slope View',
                        econ1QueenSlopeViewNH,
                        econ1QueenSlopeViewNH * 123,
                      ),
                      SummerCard(
                        '1 Queen - 2 Euro Sleepers',
                        econ1Queen2EuroSleepersNH,
                        econ1Queen2EuroSleepersNH * 144,
                      ),
                      SummerCard(
                        '2 Queen - 1 Twin',
                        econ2Queen1TwinNH,
                        econ2Queen1TwinNH * 143,
                      ),
                      SummerCard(
                        '1 Queen, 1 Twin, Slope View',
                        econ1Queen1TwinSlopeViewNH,
                        econ1Queen1TwinSlopeViewNH * 145,
                      ),
                      SummerCard(
                        '3 Queen',
                        econ3QueenNH,
                        econ3QueenNH = 151,
                      ),
                      SummerCard(
                        '2 Queen, 1 Twin, Slope View',
                        econ2Queen1TwinSlopeViewNH,
                        econ2Queen1TwinSlopeViewNH = 151,
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
                      SummerCard(
                        '1 Queen',
                        standard1QueenNH,
                        standard1QueenNH * 160,
                      ),
                      SummerCard(
                        '1 Queen -Slope View',
                        standard1QueenSlopeViewNH,
                        standard1QueenSlopeViewNH * 168,
                      ),
                      SummerCard(
                        '2 Queen',
                        standard2QueenNH,
                        standard2QueenNH * 181,
                      ),
                      SummerCard(
                        '2 Queen - Slope View',
                        standard2QueenSlopeViewNH,
                        standard2QueenSlopeViewNH * 188,
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
                      SummerCard(
                        '1 King',
                        standardWithKing1KingNH,
                        standardWithKing1KingNH * 164,
                      ),
                      SummerCard(
                        '1 King - Slope View',
                        standardWithKing1KingSlopeViewNH,
                        standardWithKing1KingSlopeViewNH * 173,
                      ),
                      SummerCard(
                        '1 King, 1 Bunk, 1 Day Bed, and Slope View',
                        standardWithKing1King1Bunk1DaybedSlopeViewNH,
                        standardWithKing1King1Bunk1DaybedSlopeViewNH * 199,
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
                      SummerCard(
                        'Slope View - Max Occupancy 4 People',
                        suiteSlopeViewNH,
                        suiteSlopeViewNH * 191,
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
                      SummerCard(
                        'Slope View - Max Occupancy 4 People',
                        twobedroomsuiteSlopeViewNH,
                        twobedroomsuiteSlopeViewNH * 215,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// 2020 Bike Park Season Pass Rates
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    '2020 Bike Park Season Pass Rates',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SummerCard(
                        'Adults (30+)',
                        adultBikeParkSeasonPass,
                        adultBikeParkSeasonPass * 152,
                      ),
                      SummerCard(
                        '20\'s (20-29)',
                        twentyBikeParkSeasonPass,
                        twentyBikeParkSeasonPass * 121,
                      ),
                      SummerCard(
                        'Teen (13-19)',
                        teenBikeParkSeasonPass,
                        teenBikeParkSeasonPass * 110,
                      ),
                      SummerCard(
                        'Kid (12 and under)',
                        kidBikeParkSeasonPass,
                        kidBikeParkSeasonPass * 79,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// 2020 Bike Park Rates All Day
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    '2020 Bike Park Rates All Day',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SummerCard(
                        'Adults (30+)',
                        adultAllDayBikePark,
                        adultAllDayBikePark * 43,
                      ),
                      SummerCard(
                        '20\'s (20-29)',
                        twentyAllDayBikePark,
                        twentyAllDayBikePark * 37,
                      ),
                      SummerCard(
                        'Teen (13-19)',
                        teenAllDayBikePark,
                        teenAllDayBikePark * 37,
                      ),
                      SummerCard(
                        'Kid (12 and under)',
                        kidAllDayBikePark,
                        kidAllDayBikePark * 19,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// 2020 Bike Park Rates Half Day
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    '2020 Bike Park Rates Half Day',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SummerCard(
                        'Adults (30+)',
                        adultHalfDayBikePark,
                        adultHalfDayBikePark * 37,
                      ),
                      SummerCard(
                        '20\'s (20-29)',
                        twentyHalfDayBikePark,
                        twentyHalfDayBikePark * 30,
                      ),
                      SummerCard(
                        'Teen (13-19)',
                        teenHalfDayBikePark,
                        teenHalfDayBikePark * 30,
                      ),
                      SummerCard(
                        'Kid (12 and under)',
                        kidHalfDayBikePark,
                        kidHalfDayBikePark * 15,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// 2020 Summer Bike Rentals
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    '2020 Summer Bike Rentals',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 240,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SummerCard(
                        'All Day Bike Rental (9am-4pm), full suspension bike, all ages',
                        allDayBikeRentalSummerPassRentals,
                        allDayBikeRentalSummerPassRentals * 79,
                      ),
                      SummerCard(
                        'Bike Rental Insurance \$16 Per Day',
                        insuranceSummerPassRentals,
                        insuranceSummerPassRentals * 16,
                      ),
                      SummerCard(
                        'Half Day Bike Rental (12:30-4pm), full suspension, all ages',
                        halfDayBikeRentalSummerPassRentals,
                        halfDayBikeRentalSummerPassRentals * 63,
                      ),
                      SummerCard(
                        'Full Face Helmet Rental, all day',
                        fullFaceHelmetSummerPassRentals,
                        fullFaceHelmetSummerPassRentals * 14,
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
