import 'package:flutter/material.dart';
import '../components/lessons_card.dart';

class Lessons extends StatefulWidget {
  @override
  _LessonsState createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  /// First Timers Area
  static int seniorPlusFirstTimersNonHoliday,
      seniorFirstTimersNonHoliday,
      adultFirstTimersNonHoliday,
      twentyFirstTimersNonHoliday,
      teenFirstTimersNonHoliday,
      kidFirstTimersNonHoliday,
      childFirstTimersNonHoliday;
  static int seniorPlusFirstTimersHoliday,
      seniorFirstTimersHoliday,
      adultFirstTimersHoliday,
      twentyFirstTimersHoliday,
      teenFirstTimersHoliday,
      kidFirstTimersHoliday,
      childFirstTimersHoliday;

  /// Kid's Lessons
  static int kidsAllDay, kidsHalfDay, kidsLunchOnly, kidsMiniSkier;

  /// Lessons Only (H = Holiday NH = Non-Holiday)
  /// Private Lessons Holiday
  static int earlyBird9_10amH,
      halfDay9_12pmH,
      halfDay10_1pmH,
      halfDay12_3pmH,
      halfDay1_4pmH,
      allDay9_4pmH,
      twilight3_4pmH;

  /// Private Lessons Non-Holiday
  static int earlyBird9_10amNH,
      halfDay9_12pmNH,
      halfDay10_1pmNH,
      halfDay12_3pmNH,
      halfDay1_4pmNH,
      allDay9_4pmNH,
      twilight3_4pmNH;

  /// Group Lesson
  static int groupLesson, secondGroupLessonSameDay;

  /// 3 Pack of Group Lessons
  static int threePackGroupLessons;

  @override
  void initState() {
    super.initState();

    /// First Timers Area
    seniorPlusFirstTimersNonHoliday = 1;
    seniorFirstTimersNonHoliday = 1;
    adultFirstTimersNonHoliday = 1;
    twentyFirstTimersNonHoliday = 1;
    teenFirstTimersNonHoliday = 1;
    kidFirstTimersNonHoliday = 1;
    childFirstTimersNonHoliday = 1;

    seniorPlusFirstTimersHoliday = 1;
    seniorFirstTimersHoliday = 1;
    adultFirstTimersHoliday = 1;
    twentyFirstTimersHoliday = 1;
    teenFirstTimersHoliday = 1;
    kidFirstTimersHoliday = 1;
    childFirstTimersHoliday = 1;

    /// Kid's Lessons
    kidsAllDay = 1;
    kidsHalfDay = 1;
    kidsLunchOnly = 1;
    kidsMiniSkier = 1;

    /// Private Lessons Holiday
    earlyBird9_10amH = 1;
    halfDay9_12pmH = 1;
    halfDay10_1pmH = 1;
    halfDay12_3pmH = 1;
    halfDay1_4pmH = 1;
    allDay9_4pmH = 1;
    twilight3_4pmH = 1;

    /// Private Lessons Non-Holiday
    earlyBird9_10amNH = 1;
    halfDay9_12pmNH = 1;
    halfDay10_1pmNH = 1;
    halfDay12_3pmNH = 1;
    halfDay1_4pmNH = 1;
    allDay9_4pmNH = 1;
    twilight3_4pmNH = 1;

    /// Group Lesson
    groupLesson = 1;
    secondGroupLessonSameDay = 1;

    /// 3 Pack of Group Lessons
    threePackGroupLessons = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lessons'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            /// First Timers Non-Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'First Timers Non-Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LessonsCard(
                        'Senior Plus (70+)',
                        seniorPlusFirstTimersNonHoliday,
                        seniorPlusFirstTimersNonHoliday * 34,
                      ),
                      LessonsCard(
                        'Senior (65-69)',
                        seniorFirstTimersNonHoliday,
                        seniorFirstTimersNonHoliday * 39,
                      ),
                      LessonsCard(
                        'Adult (30-64)',
                        adultFirstTimersNonHoliday,
                        adultFirstTimersNonHoliday * 43,
                      ),
                      LessonsCard(
                        '20\'s 20-29',
                        twentyFirstTimersNonHoliday,
                        twentyFirstTimersNonHoliday * 34,
                      ),
                      LessonsCard(
                        'Teen (13-19)',
                        teenFirstTimersNonHoliday,
                        teenFirstTimersNonHoliday * 31,
                      ),
                      LessonsCard(
                        'Kid (6-12)',
                        kidFirstTimersNonHoliday,
                        kidFirstTimersNonHoliday * 20,
                      ),
                      LessonsCard(
                        'Child (5 & Under)',
                        childFirstTimersNonHoliday,
                        childFirstTimersNonHoliday = 0,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// First Timers Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'First Timers - Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LessonsCard(
                        'Senior Plus (70+)',
                        seniorPlusFirstTimersHoliday,
                        seniorPlusFirstTimersHoliday * 38,
                      ),
                      LessonsCard(
                        'Senior (65-69)',
                        seniorFirstTimersHoliday,
                        seniorFirstTimersHoliday * 43,
                      ),
                      LessonsCard(
                        'Adult (30-64)',
                        adultFirstTimersHoliday,
                        adultFirstTimersHoliday * 48,
                      ),
                      LessonsCard(
                        '20\'s 20-29',
                        twentyFirstTimersHoliday,
                        twentyFirstTimersHoliday * 38,
                      ),
                      LessonsCard(
                        'Teen (13-19)',
                        teenFirstTimersHoliday,
                        teenFirstTimersHoliday * 34,
                      ),
                      LessonsCard(
                        'Kid (6-12)',
                        kidFirstTimersHoliday,
                        kidFirstTimersHoliday * 22,
                      ),
                      LessonsCard(
                        'Child (5 & Under)',
                        childFirstTimersHoliday,
                        childFirstTimersHoliday = 0,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Kids All Day
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'All Day Kid\'s Camp - \$146\nFor Skiers and Snowboarders',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LessonsCard(
                        'Ages 6-10 - 10am - 3pm',
                        kidsAllDay,
                        kidsAllDay * 146,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Kids Half Day
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Half Day Kid\'s Camp - \$114\nFor skiers and snowboarders',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LessonsCard(
                        'Ages 4-10 - 10am - 1pm, 12pm - 3pm',
                        kidsHalfDay,
                        kidsHalfDay * 114,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Kids Lunch Only
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Lunch Only - \$25',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LessonsCard(
                        'Ages 4-10 - 12pm - 1pm',
                        kidsLunchOnly,
                        kidsLunchOnly * 25,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Kids Mini Skier
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Mini Skier - \$77',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LessonsCard(
                        'Age 3',
                        kidsMiniSkier,
                        kidsMiniSkier * 77,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// First Timers Non-Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Private Lessons - Non-Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LessonsCard(
                        'Early Bird 9am - 10am',
                        earlyBird9_10amNH,
                        earlyBird9_10amNH * 100,
                      ),
                      LessonsCard(
                        'Half Day 9am - 12pm',
                        halfDay9_12pmNH,
                        halfDay9_12pmNH * 350,
                      ),
                      LessonsCard(
                        'Half Day 10am - 1pm',
                        halfDay10_1pmNH,
                        halfDay10_1pmNH * 400,
                      ),
                      LessonsCard(
                        'Half Day 12pm - 3pm',
                        halfDay12_3pmNH,
                        halfDay12_3pmNH * 400,
                      ),
                      LessonsCard(
                        'Half Day 1pm - 4pm',
                        halfDay1_4pmNH,
                        halfDay1_4pmNH * 325,
                      ),
                      LessonsCard(
                        'All Day 9am - 4pm',
                        allDay9_4pmNH,
                        allDay9_4pmNH = 600,
                      ),
                      LessonsCard(
                        'Twilight 3pm-4pm',
                        twilight3_4pmNH,
                        twilight3_4pmNH = 75,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// First Timers Holiday
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Private Lessons - Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LessonsCard(
                        'Early Bird 9am - 10am',
                        earlyBird9_10amH,
                        earlyBird9_10amH * 105,
                      ),
                      LessonsCard(
                        'Half Day 9am - 12pm',
                        halfDay9_12pmH,
                        halfDay9_12pmH * 368,
                      ),
                      LessonsCard(
                        'Half Day 10am - 1pm',
                        halfDay10_1pmH,
                        halfDay10_1pmH * 420,
                      ),
                      LessonsCard(
                        'Half Day 12pm - 3pm',
                        halfDay12_3pmH,
                        halfDay12_3pmH * 420,
                      ),
                      LessonsCard(
                        'Half Day 1pm - 4pm',
                        halfDay1_4pmH,
                        halfDay1_4pmH * 341,
                      ),
                      LessonsCard(
                        'All Day 9am - 4pm',
                        allDay9_4pmH,
                        allDay9_4pmH = 630,
                      ),
                      LessonsCard(
                        'Twilight 3pm-4pm',
                        twilight3_4pmH,
                        twilight3_4pmH = 79,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// Group Lesson
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Group Lessons',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 240,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LessonsCard(
                        'Group Lesson Only \$56',
                        groupLesson,
                        groupLesson * 56,
                      ),
                      LessonsCard(
                        'New This Season! 3 Pack of Group Lessons \$99',
                        secondGroupLessonSameDay,
                        secondGroupLessonSameDay * 99,
                      ),
                    ],
                  ),
                )
              ],
            ),

            /// 3 Pack Group Lessons
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Private Lessons - Holiday',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LessonsCard(
                        'Group Lesson Only \$56',
                        groupLesson,
                        groupLesson * 56,
                      ),
                      LessonsCard(
                        'Second group lesson on the same day 1pm - \$28',
                        secondGroupLessonSameDay,
                        secondGroupLessonSameDay * 28,
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
