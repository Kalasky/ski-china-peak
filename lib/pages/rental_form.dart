import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skichinapeak/components/rounded_button.dart';
import '.././constants.dart';

class RentalForm extends StatefulWidget {
  @override
  _RentalFormState createState() => _RentalFormState();
}

class _RentalFormState extends State<RentalForm> {
  /// rental day checkbox values
  bool sat = false;
  bool sun = false;
  bool mon = false;
  bool tue = false;
  bool wed = false;
  bool thurs = false;
  bool fri = false;

  /// skiing/boarding style checkbox values
  bool cautious = false;
  bool neutral = false;
  bool aggressive = false;

  /// Board Stance checkbox values
  bool goofy = false;
  bool regular = false;

  /// ski rentals checkbox values
  bool highPerformanceSki = false;
  bool skisBootsPolesSki = false;
  bool skisPolesSki = false;
  bool skisOnlySki = false;
  bool skiBootsOnlySki = false;

  /// snowboard rentals
  bool highPerformanceSB = false;
  bool snowboardBootsSB = false;
  bool boardOnlySB = false;
  bool snowboardBootsOnlySB = false;
  bool helmetSB = false;

  bool equipmentDamageInsurance = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rental Form'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Please Select Days Renting',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Saturday checkbox
                    Column(
                      children: <Widget>[
                        Text("Sat"),
                        Checkbox(
                          value: sat,
                          onChanged: (bool value) {
                            setState(() {
                              sat = value;
                              print(value);
                            });
                          },
                        ),
                      ],
                    ),
                    // Sunday checkbox
                    Column(
                      children: <Widget>[
                        Text("Sun"),
                        Checkbox(
                          value: sun,
                          onChanged: (bool value) {
                            setState(() {
                              sun = value;
                            });
                          },
                        ),
                      ],
                    ),
                    // Monday checkbox
                    Column(
                      children: <Widget>[
                        Text("Mon"),
                        Checkbox(
                          value: mon,
                          onChanged: (bool value) {
                            setState(() {
                              mon = value;
                            });
                          },
                        ),
                      ],
                    ),
                    // Tuesday checkbox
                    Column(
                      children: <Widget>[
                        Text("Tue"),
                        Checkbox(
                          value: tue,
                          onChanged: (bool value) {
                            setState(() {
                              tue = value;
                            });
                          },
                        ),
                      ],
                    ),
                    // Wednesday checkbox
                    Column(
                      children: <Widget>[
                        Text("Wed"),
                        Checkbox(
                          value: wed,
                          onChanged: (bool value) {
                            setState(() {
                              wed = value;
                            });
                          },
                        ),
                      ],
                    ),
                    // Thursday checkbox
                    Column(
                      children: <Widget>[
                        Text("Thurs"),
                        Checkbox(
                          value: thurs,
                          onChanged: (bool value) {
                            setState(() {
                              thurs = value;
                            });
                          },
                        ),
                      ],
                    ),
                    // Friday checkbox
                    Column(
                      children: <Widget>[
                        Text("Fri"),
                        Checkbox(
                          value: fri,
                          onChanged: (bool value) {
                            setState(() {
                              fri = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Form(
                  child: Column(children: <Widget>[
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
                        decoration: InputDecoration(hintText: 'Address'),
                      ),
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
                          flex: 3,
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
                          flex: 3,
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
                              decoration: InputDecoration(hintText: 'Weight'),
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
                              decoration: InputDecoration(hintText: 'Height'),
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
                              decoration: InputDecoration(hintText: 'Age'),
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
                              decoration:
                                  InputDecoration(hintText: 'Date of Birth'),
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
                                  InputDecoration(hintText: 'Shoe Size'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Skiing or Boarding Style',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("Cautious"),
                              Checkbox(
                                value: cautious,
                                onChanged: (bool value) {
                                  setState(() {
                                    cautious = value;
                                    print(value);
                                  });
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("Neutral"),
                              Checkbox(
                                value: neutral,
                                onChanged: (bool value) {
                                  setState(() {
                                    neutral = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("Aggressive"),
                              Checkbox(
                                value: aggressive,
                                onChanged: (bool value) {
                                  setState(() {
                                    aggressive = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Board Stance',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("Goofy"),
                              Checkbox(
                                value: goofy,
                                onChanged: (bool value) {
                                  setState(() {
                                    goofy = value;
                                    if (value == true) {
                                      regular = false;
                                    }

                                    print(value);
                                  });
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("Regular"),
                              Checkbox(
                                value: regular,
                                onChanged: (bool value) {
                                  setState(() {
                                    regular = value;
                                    if (value == true) {
                                      goofy = false;
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
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Ski Rentals',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("High Performance"),
                              Checkbox(
                                value: highPerformanceSki,
                                onChanged: (bool value) {
                                  setState(() {
                                    highPerformanceSki = value;
                                    print(value);
                                  });
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("Ski - Boots - poles"),
                              Checkbox(
                                value: skisBootsPolesSki,
                                onChanged: (bool value) {
                                  setState(() {
                                    skisBootsPolesSki = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("Skis & Poles"),
                            Checkbox(
                              value: skisPolesSki,
                              onChanged: (bool value) {
                                setState(() {
                                  skisPolesSki = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text("Skis Only"),
                            Checkbox(
                              value: skisOnlySki,
                              onChanged: (bool value) {
                                setState(() {
                                  skisOnlySki = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text("Ski Boots Only"),
                            Checkbox(
                              value: skiBootsOnlySki,
                              onChanged: (bool value) {
                                setState(() {
                                  skiBootsOnlySki = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Snowboard Rentals',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("High Performance"),
                              Checkbox(
                                value: highPerformanceSB,
                                onChanged: (bool value) {
                                  setState(() {
                                    highPerformanceSB = value;
                                    print(value);
                                  });
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("Snowboard & Boots"),
                              Checkbox(
                                value: snowboardBootsSB,
                                onChanged: (bool value) {
                                  setState(() {
                                    snowboardBootsSB = value;
                                    print(value);
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("Board Only"),
                              Checkbox(
                                value: boardOnlySB,
                                onChanged: (bool value) {
                                  setState(() {
                                    boardOnlySB = value;
                                    print(value);
                                  });
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("Snowboard Boots Only"),
                              Checkbox(
                                value: snowboardBootsOnlySB,
                                onChanged: (bool value) {
                                  setState(() {
                                    snowboardBootsOnlySB = value;
                                    print(value);
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "Helmet (Use Helmet Form)",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Checkbox(
                                value: helmetSB,
                                onChanged: (bool value) {
                                  setState(() {
                                    helmetSB = value;
                                    print(value);
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "Equipment Damage Insurance",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Checkbox(
                                value: equipmentDamageInsurance,
                                onChanged: (bool value) {
                                  setState(() {
                                    equipmentDamageInsurance = value;
                                    print(value);
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 25.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        decoration:
                            InputDecoration(hintText: 'User\'s Printed Name'),
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
                              decoration: InputDecoration(
                                  hintText: 'User\'s Signature'),
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

                    /// if user is a minor
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 25.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: 'Parent/Guardian Printed Name'),
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
                              decoration: InputDecoration(
                                  hintText: 'Parent/Guardian Signature'),
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

                    /// part 2 (do not sign until after you have received your equipment)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 25.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        decoration:
                            InputDecoration(hintText: 'User\'s Printed Name'),
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
                              decoration: InputDecoration(
                                  hintText: 'User\'s Signature'),
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

                    /// if user is a minor
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 25.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: 'Parent/Guardian Printed Name'),
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
                              decoration: InputDecoration(
                                  hintText: 'Parent/Guardian Signature'),
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
                    RoundedButton(
                      title: 'Submit',
                      colour: Colors.blueAccent,
                      onPressed: () {
                        showDialog<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Submitted'),
                                content: Text(
                                    'Check your email for more information.'),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text('Ok'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
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
