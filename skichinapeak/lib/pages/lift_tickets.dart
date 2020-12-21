import 'package:flutter/material.dart';
import '../components/lift_tickets_card.dart';

class LiftTickets extends StatefulWidget {
  @override
  _LiftTicketsState createState() => _LiftTicketsState();
}

class _LiftTicketsState extends State<LiftTickets> {
  /// Lift Ticket Rates
  static int seniorPlusAllDayNonHoliday,
      seniorAllDayNonHoliday,
      adultAllDayNonHoliday,
      twentyAllDayNonHoliday,
      teenAllDayNonHoliday,
      kidAllDayNonHoliday,
      childAllDayNonHoliday;
  static int seniorPlusAllDayHoliday,
      seniorAllDayHoliday,
      adultAllDayHoliday,
      twentyAllDayHoliday,
      teenAllDayHoliday,
      kidAllDayHoliday,
      childAllDayHoliday;
  static int seniorPlusHalfDayNonHoliday,
      seniorHalfDayNonHoliday,
      adultHalfDayNonHoliday,
      twentyHalfDayNonHoliday,
      teenHalfDayNonHoliday,
      kidHalfDayNonHoliday,
      childHalfDayNonHoliday;
  static int seniorPlusHalfDayHoliday,
      seniorHalfDayHoliday,
      adultHalfDayHoliday,
      twentyHalfDayHoliday,
      teenHalfDayHoliday,
      kidHalfDayHoliday,
      childHalfDayHoliday;

  /// 3 Pack
  static int seniorPlusBestDeal12_21_3_8,
      seniorBestDeal12_21_3_8,
      adultBestDeal12_21_3_8,
      twentyBestDeal12_21_3_8,
      teenBestDeal12_21_3_8,
      kidBestDeal12_21_3_8,
      childBestDeal12_21_3_8;
  static int seniorPlusBestDeal3_9_4_19,
      seniorBestDeal3_9_4_19,
      adultBestDeal3_9_4_19,
      twentyBestDeal3_9_4_19,
      teenBestDeal3_9_4_19,
      kidBestDeal3_9_4_19,
      childBestDeal3_9_4_19;
  static int seniorPlus1DayNonHoliday,
      senior1DayNonHoliday,
      adult1DayNonHoliday,
      twenty1DayNonHoliday,
      teen1DayNonHoliday,
      kid1DayNonHoliday,
      child1DayNonHoliday;
  static int seniorPlus1DayAnytime,
      senior1DayAnytime,
      adult1DayAnytime,
      twenty1DayAnytime,
      teen1DayAnytime,
      kid1DayAnytime,
      child1DayAnytime;

  /// Beginner Area
  static int seniorPlusBeginnerAreaAnyDay,
      seniorBeginnerAreaAnyDay,
      adultBeginnerAreaAnyDay,
      twentyBeginnerAreaAnyDay,
      teenBeginnerAreaAnyDay,
      kidBeginnerAreaAnyDay,
      childBeginnerAreaAnyDay;

  @override
  void initState() {
    super.initState();

    /// Lift Ticket Rates
    seniorPlusAllDayNonHoliday = 1;
    seniorAllDayNonHoliday = 1;
    adultAllDayNonHoliday = 1;
    twentyAllDayNonHoliday = 1;
    teenAllDayNonHoliday = 1;
    kidAllDayNonHoliday = 1;
    childAllDayNonHoliday = 1;

    seniorPlusAllDayHoliday = 1;
    seniorAllDayHoliday = 1;
    adultAllDayHoliday = 1;
    twentyAllDayHoliday = 1;
    teenAllDayHoliday = 1;
    kidAllDayHoliday = 1;
    childAllDayHoliday = 1;

    seniorPlusHalfDayNonHoliday = 1;
    seniorHalfDayNonHoliday = 1;
    adultHalfDayNonHoliday = 1;
    twentyHalfDayNonHoliday = 1;
    teenHalfDayNonHoliday = 1;
    kidHalfDayNonHoliday = 1;
    childHalfDayNonHoliday = 1;

    seniorPlusHalfDayHoliday = 1;
    seniorHalfDayHoliday = 1;
    adultHalfDayHoliday = 1;
    twentyHalfDayHoliday = 1;
    teenHalfDayHoliday = 1;
    kidHalfDayHoliday = 1;
    childHalfDayHoliday = 1;

    /// 3 Pack
    seniorPlusBestDeal12_21_3_8 = 1;
    seniorBestDeal12_21_3_8 = 1;
    adultBestDeal12_21_3_8 = 1;
    twentyBestDeal12_21_3_8 = 1;
    teenBestDeal12_21_3_8 = 1;
    kidBestDeal12_21_3_8 = 1;
    childBestDeal12_21_3_8 = 1;

    seniorPlusBestDeal3_9_4_19 = 1;
    seniorBestDeal3_9_4_19 = 1;
    adultBestDeal3_9_4_19 = 1;
    twentyBestDeal3_9_4_19 = 1;
    teenBestDeal3_9_4_19 = 1;
    kidBestDeal3_9_4_19 = 1;
    childBestDeal3_9_4_19 = 1;

    seniorPlus1DayNonHoliday = 1;
    senior1DayNonHoliday = 1;
    adult1DayNonHoliday = 1;
    twenty1DayNonHoliday = 1;
    teen1DayNonHoliday = 1;
    kid1DayNonHoliday = 1;
    child1DayNonHoliday = 1;

    seniorPlus1DayAnytime = 1;
    senior1DayAnytime = 1;
    adult1DayAnytime = 1;
    twenty1DayAnytime = 1;
    teen1DayAnytime = 1;
    kid1DayAnytime = 1;
    child1DayAnytime = 1;

    /// Beginner Area
    seniorPlusBeginnerAreaAnyDay = 1;
    seniorBeginnerAreaAnyDay = 1;
    adultBeginnerAreaAnyDay = 1;
    twentyBeginnerAreaAnyDay = 1;
    teenBeginnerAreaAnyDay = 1;
    kidBeginnerAreaAnyDay = 1;
    childBeginnerAreaAnyDay = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lift Tickets'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            /// All Day Non-Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'All Day Non-Holiday 9am-4pm',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LiftTicketRateCard(
                        'Senior Plus (70+)',
                        seniorPlusAllDayNonHoliday,
                        seniorPlusAllDayNonHoliday * 74,
                      ),
                      LiftTicketRateCard(
                        'Senior (65-69)',
                        seniorAllDayNonHoliday,
                        seniorAllDayNonHoliday * 85,
                      ),
                      LiftTicketRateCard(
                        'Adult (30-64)',
                        adultAllDayNonHoliday,
                        adultAllDayNonHoliday * 99,
                      ),
                      LiftTicketRateCard(
                        '20\'s 20-29',
                        twentyAllDayNonHoliday,
                        twentyAllDayNonHoliday * 74,
                      ),
                      LiftTicketRateCard(
                        'Teen (13-19)',
                        teenAllDayNonHoliday,
                        teenAllDayNonHoliday * 68,
                      ),
                      LiftTicketRateCard(
                        'Kid (6-12)',
                        kidAllDayNonHoliday,
                        kidAllDayNonHoliday * 44,
                      ),
                      LiftTicketRateCard(
                        'Child (5 & Under)',
                        childAllDayNonHoliday,
                        childAllDayNonHoliday = 0,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// All Day Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'All Day Holiday 9am-4pm',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LiftTicketRateCard(
                        'Senior Plus (70+)',
                        seniorPlusAllDayHoliday,
                        seniorPlusAllDayHoliday * 78,
                      ),
                      LiftTicketRateCard(
                        'Senior (65-69)',
                        seniorAllDayHoliday,
                        seniorAllDayHoliday * 89,
                      ),
                      LiftTicketRateCard(
                        'Adult (30-64)',
                        adultAllDayHoliday,
                        adultAllDayHoliday * 104,
                      ),
                      LiftTicketRateCard(
                        '20\'s 20-29',
                        twentyAllDayHoliday,
                        twentyAllDayHoliday * 78,
                      ),
                      LiftTicketRateCard(
                        'Teen (13-19)',
                        teenAllDayHoliday,
                        teenAllDayHoliday * 71,
                      ),
                      LiftTicketRateCard(
                        'Kid (6-12)',
                        kidAllDayHoliday,
                        kidAllDayHoliday * 46,
                      ),
                      LiftTicketRateCard(
                        'Child (5 & Under)',
                        childAllDayHoliday,
                        childAllDayHoliday = 0,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Half Day Non-Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Half Day Non-Holiday 12:30-4pm',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LiftTicketRateCard(
                        'Senior Plus (70+)',
                        seniorPlusHalfDayNonHoliday,
                        seniorPlusHalfDayNonHoliday * 57,
                      ),
                      LiftTicketRateCard(
                        'Senior (65-69)',
                        seniorHalfDayNonHoliday,
                        seniorHalfDayNonHoliday * 65,
                      ),
                      LiftTicketRateCard(
                        'Adult (30-64)',
                        adultHalfDayNonHoliday,
                        adultHalfDayNonHoliday * 75,
                      ),
                      LiftTicketRateCard(
                        '20\'s 20-29',
                        twentyHalfDayNonHoliday,
                        twentyHalfDayNonHoliday * 57,
                      ),
                      LiftTicketRateCard(
                        'Teen (13-19)',
                        teenHalfDayNonHoliday,
                        teenHalfDayNonHoliday * 49,
                      ),
                      LiftTicketRateCard(
                        'Kid (6-12)',
                        kidHalfDayNonHoliday,
                        kidHalfDayNonHoliday * 29,
                      ),
                      LiftTicketRateCard(
                        'Child (5 & Under)',
                        childHalfDayNonHoliday,
                        childHalfDayNonHoliday = 0,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Half Day Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Half Day Holiday 12:30-4pm',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LiftTicketRateCard(
                        'Senior Plus (70+)',
                        seniorPlusHalfDayHoliday,
                        seniorPlusHalfDayHoliday * 60,
                      ),
                      LiftTicketRateCard(
                        'Senior (65-69)',
                        seniorHalfDayHoliday,
                        seniorHalfDayHoliday * 69,
                      ),
                      LiftTicketRateCard(
                        'Adult (30-64)',
                        adultHalfDayHoliday,
                        adultHalfDayHoliday * 79,
                      ),
                      LiftTicketRateCard(
                        '20\'s 20-29',
                        twentyHalfDayHoliday,
                        twentyHalfDayHoliday * 60,
                      ),
                      LiftTicketRateCard(
                        'Teen (13-19)',
                        teenHalfDayHoliday,
                        teenHalfDayHoliday * 52,
                      ),
                      LiftTicketRateCard(
                        'Kid (6-12)',
                        kidHalfDayHoliday,
                        kidHalfDayHoliday * 31,
                      ),
                      LiftTicketRateCard(
                        'Child (5 & Under)',
                        childHalfDayHoliday,
                        childHalfDayHoliday = 0,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Best Deal 3 Pack of Tickets 12/21-3/8
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Best Deal 3 Pack of Tickets\nValid Anytime 2019/2020\n12/21-3/8',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LiftTicketRateCard(
                        'Senior Plus (70+)',
                        seniorPlusBestDeal12_21_3_8,
                        seniorPlusBestDeal12_21_3_8 * 179,
                      ),
                      LiftTicketRateCard(
                        'Senior (65-69)',
                        seniorBestDeal12_21_3_8,
                        seniorBestDeal12_21_3_8 * 204,
                      ),
                      LiftTicketRateCard(
                        'Adult (30-64)',
                        adultBestDeal12_21_3_8,
                        adultBestDeal12_21_3_8 * 240,
                      ),
                      LiftTicketRateCard(
                        '20\'s 20-29',
                        twentyBestDeal12_21_3_8,
                        twentyBestDeal12_21_3_8 * 179,
                      ),
                      LiftTicketRateCard(
                        'Teen (13-19)',
                        teenBestDeal12_21_3_8,
                        teenBestDeal12_21_3_8 * 163,
                      ),
                      LiftTicketRateCard(
                        'Kid (6-12)',
                        kidBestDeal12_21_3_8,
                        kidBestDeal12_21_3_8 * 107,
                      ),
                      LiftTicketRateCard(
                        'Child (5 & Under)',
                        childBestDeal12_21_3_8,
                        childBestDeal12_21_3_8 = 0,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Best Deal 3 Pack of Tickets 3/9-4/19
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Best Deal 3 Pack of Tickets\nValid Anytime 2019/2020\n3/9-4/19',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LiftTicketRateCard(
                        'Senior Plus (70+)',
                        seniorPlusBestDeal3_9_4_19,
                        seniorPlusBestDeal3_9_4_19 * 168,
                      ),
                      LiftTicketRateCard(
                        'Senior (65-69)',
                        seniorBestDeal3_9_4_19,
                        seniorBestDeal3_9_4_19 * 192,
                      ),
                      LiftTicketRateCard(
                        'Adult (30-64)',
                        adultBestDeal3_9_4_19,
                        adultBestDeal3_9_4_19 * 226,
                      ),
                      LiftTicketRateCard(
                        '20\'s 20-29',
                        twentyBestDeal3_9_4_19,
                        twentyBestDeal3_9_4_19 * 168,
                      ),
                      LiftTicketRateCard(
                        'Teen (13-19)',
                        teenBestDeal3_9_4_19,
                        teenBestDeal3_9_4_19 * 153,
                      ),
                      LiftTicketRateCard(
                        'Kid (6-12)',
                        kidBestDeal3_9_4_19,
                        kidBestDeal3_9_4_19 * 101,
                      ),
                      LiftTicketRateCard(
                        'Child (5 & Under)',
                        childBestDeal3_9_4_19,
                        childBestDeal3_9_4_19 = 0,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// All Day Single Day Non-Holiday Online Rate
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'All Day Single Day\nNon-Holiday Online Rate',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LiftTicketRateCard(
                        'Senior Plus (70+)',
                        seniorPlus1DayNonHoliday,
                        seniorPlus1DayNonHoliday * 67,
                      ),
                      LiftTicketRateCard(
                        'Senior (65-69)',
                        senior1DayNonHoliday,
                        senior1DayNonHoliday * 76,
                      ),
                      LiftTicketRateCard(
                        'Adult (30-64)',
                        adult1DayNonHoliday,
                        adult1DayNonHoliday * 89,
                      ),
                      LiftTicketRateCard(
                        '20\'s 20-29',
                        twenty1DayNonHoliday,
                        twenty1DayNonHoliday * 67,
                      ),
                      LiftTicketRateCard(
                        'Teen (13-19)',
                        teen1DayNonHoliday,
                        teen1DayNonHoliday * 61,
                      ),
                      LiftTicketRateCard(
                        'Kid (6-12)',
                        kid1DayNonHoliday,
                        kid1DayNonHoliday * 40,
                      ),
                      LiftTicketRateCard(
                        'Child (5 & Under)',
                        child1DayNonHoliday,
                        child1DayNonHoliday = 0,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// All Day Single Day Anytime Online Rate
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'All Day Single Day\nAnytime Online Rate',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LiftTicketRateCard(
                        'Senior Plus (70+)',
                        seniorPlus1DayAnytime,
                        seniorPlus1DayAnytime * 70,
                      ),
                      LiftTicketRateCard(
                        'Senior (65-69)',
                        senior1DayAnytime,
                        senior1DayAnytime * 80,
                      ),
                      LiftTicketRateCard(
                        'Adult (30-64)',
                        adult1DayAnytime,
                        adult1DayAnytime * 94,
                      ),
                      LiftTicketRateCard(
                        '20\'s 20-29',
                        twenty1DayAnytime,
                        twenty1DayAnytime * 70,
                      ),
                      LiftTicketRateCard(
                        'Teen (13-19)',
                        teen1DayAnytime,
                        teen1DayAnytime * 64,
                      ),
                      LiftTicketRateCard(
                        'Kid (6-12)',
                        kid1DayAnytime,
                        kid1DayAnytime * 42,
                      ),
                      LiftTicketRateCard(
                        'Child (5 & Under)',
                        child1DayAnytime,
                        child1DayAnytime = 0,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Beginner Area Any Day
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Beginner Area Lift Tickets - Any Day',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LiftTicketRateCard(
                        'Senior Plus (70+)',
                        seniorPlusBeginnerAreaAnyDay,
                        seniorPlusBeginnerAreaAnyDay * 40,
                      ),
                      LiftTicketRateCard(
                        'Senior (65-69)',
                        seniorBeginnerAreaAnyDay,
                        seniorBeginnerAreaAnyDay * 46,
                      ),
                      LiftTicketRateCard(
                        'Adult (30-64)',
                        adultBeginnerAreaAnyDay,
                        adultBeginnerAreaAnyDay * 56,
                      ),
                      LiftTicketRateCard(
                        '20\'s 20-29',
                        twentyBeginnerAreaAnyDay,
                        twentyBeginnerAreaAnyDay * 40,
                      ),
                      LiftTicketRateCard(
                        'Teen (13-19)',
                        teenBeginnerAreaAnyDay,
                        teenBeginnerAreaAnyDay * 37,
                      ),
                      LiftTicketRateCard(
                        'Kid (6-12)',
                        kidBeginnerAreaAnyDay,
                        kidBeginnerAreaAnyDay * 24,
                      ),
                      LiftTicketRateCard(
                        'Child (5 & Under)',
                        childBeginnerAreaAnyDay,
                        childBeginnerAreaAnyDay = 0,
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
