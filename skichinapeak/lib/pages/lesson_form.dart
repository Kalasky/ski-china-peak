import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skichinapeak/components/rounded_button.dart';

class LessonForm extends StatefulWidget {
  @override
  _LessonFormState createState() => _LessonFormState();
}

class _LessonFormState extends State<LessonForm> {
  bool skier = false;
  bool snowboarder = false;

  bool kidsBeginnerLesson = false;
  bool kidsAllMtn = false;
  bool kidsMiniSkier = false;
  bool kidsCampHalfDay = false;
  bool kidsCamp = false;
  bool beginnerPackage = false;
  bool adultAllMtn = false;
  bool privateLesson = false;
  bool secondLesson = false;
  bool groupLesson = false;

  bool oneHour = false;
  bool twoHour = false;
  bool threeHour = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson Form'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
            child: Column(
              children: <Widget>[
                Form(
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'China Peak Mountain Resort\nLesson Agreement',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration:
                                  InputDecoration(hintText: 'First Name'),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration:
                                  InputDecoration(hintText: 'Last Name'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 25.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(hintText: 'Today\'s Date'),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(hintText: 'Address'),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration:
                                  InputDecoration(hintText: 'Date of Birth'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(hintText: 'City'),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(hintText: 'State'),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(hintText: 'Zip'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(hintText: 'Age'),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(hintText: 'Phone'),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(hintText: 'Email'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("Skier"),
                              Checkbox(
                                value: skier,
                                onChanged: (bool value) {
                                  setState(() {
                                    skier = value;
                                    if (value == true) {
                                      snowboarder = false;
                                    }

                                    print(value);
                                  });
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("Snowboarder"),
                              Checkbox(
                                value: snowboarder,
                                onChanged: (bool value) {
                                  setState(() {
                                    snowboarder = value;
                                    if (value == true) {
                                      skier = false;
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Column(
                        children: <Widget>[
                          CheckboxListTile(
                            title: Text(
                                'Kid\'s Beginner Lesson\n(Ages 4-12 Ski & Board)'),
                            value: kidsBeginnerLesson,
                            onChanged: (bool value) {
                              setState(() {
                                kidsBeginnerLesson = value;

                                print(value);
                              });
                            },
                          ),
                          CheckboxListTile(
                            title: Text(
                                'Kid\'s All Mountain Lesson\n(Ages 4-12 Ski & Board Upper Level)'),
                            value: kidsAllMtn,
                            onChanged: (bool value) {
                              setState(() {
                                kidsAllMtn = value;

                                print(value);
                              });
                            },
                          ),
                          CheckboxListTile(
                            title: Text('Kid\'s Mini-Skier Lesson (3 Years)'),
                            value: kidsMiniSkier,
                            onChanged: (bool value) {
                              setState(() {
                                kidsMiniSkier = value;

                                print(value);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    CheckboxListTile(
                      title: Text(
                          'Kid\'s Camp Half-Day (10am-2pm or 12pm-4pm)\nAge 6-12, Ski & Board'),
                      value: kidsCampHalfDay,
                      onChanged: (bool value) {
                        setState(() {
                          kidsCampHalfDay = value;

                          print(value);
                        });
                      },
                    ),
                    CheckboxListTile(
                      title:
                          Text('Kid\'s Camp (10am-4pm) Age 6-12 Ski & Board'),
                      value: kidsCamp,
                      onChanged: (bool value) {
                        setState(() {
                          kidsCamp = value;

                          print(value);
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text('Beginner Package - Ages 13+ Ski & Board'),
                      value: beginnerPackage,
                      onChanged: (bool value) {
                        setState(() {
                          beginnerPackage = value;

                          print(value);
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(
                          'Adult All Mountain Lesson - Ages 13+ Ski & Board'),
                      value: adultAllMtn,
                      onChanged: (bool value) {
                        setState(() {
                          adultAllMtn = value;

                          print(value);
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Private Lesson (Select Number of Hours)',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("1 Hour"),
                              Checkbox(
                                value: oneHour,
                                onChanged: (bool value) {
                                  setState(() {
                                    oneHour = value;
                                    if (value == true) {
                                      twoHour = false;
                                      threeHour = false;
                                    }

                                    print(value);
                                  });
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("2 Hours"),
                              Checkbox(
                                value: twoHour,
                                onChanged: (bool value) {
                                  setState(() {
                                    twoHour = value;
                                    if (value == true) {
                                      oneHour = false;
                                      threeHour = false;
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("3 Hours"),
                              Checkbox(
                                value: threeHour,
                                onChanged: (bool value) {
                                  setState(() {
                                    threeHour = value;
                                    if (value == true) {
                                      oneHour = false;
                                      twoHour = false;
                                    }

                                    print(value);
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    CheckboxListTile(
                      title: Text('2nd Lesson (Same Day)'),
                      value: secondLesson,
                      onChanged: (bool value) {
                        setState(() {
                          secondLesson = value;

                          print(value);
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text('Group Lesson'),
                      value: groupLesson,
                      onChanged: (bool value) {
                        setState(() {
                          groupLesson = value;

                          print(value);
                        });
                      },
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration:
                                  InputDecoration(hintText: 'Printed Name'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Ski & Board School Participants Release',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: 'Participant\'s Name'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: 'Participant\'s Name'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: 'Participant\'s Signature'),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(hintText: 'Date'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: 'Parent or Guardian Name'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: 'Parent or Guardian Signature'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(hintText: 'Date'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'This Section For Rental Technician To Complete',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: 'User\'s Last Name'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration:
                                  InputDecoration(hintText: 'Equipment Number'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration:
                                  InputDecoration(hintText: 'Exchange Number'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 25.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(hintText: 'Notes'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    RoundedButton(
                      title: 'Submit',
                      colour: Colors.blueAccent,
                      onPressed: () {
                        showDialog<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Submitted'),
                              content: Text('Date'),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('Ok'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
