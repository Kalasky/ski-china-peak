import 'package:flutter/material.dart';
import '../components/resort_services_card.dart';

class ResortService extends StatefulWidget {
  @override
  _ResortServiceState createState() => _ResortServiceState();
}

class _ResortServiceState extends State<ResortService> {
  ///  Party Bus - Ride Options
  static int busRideOnly, busRideAndLiftTicket;

  @override
  void initState() {
    super.initState();

    ///  Party Bus - Ride Options
    busRideOnly = 1;
    busRideAndLiftTicket = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resort Services'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ///  Party Bus - Ride Options
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                  child: Text(
                    'Party Bus - Ride Options\n\nScheduled Dates & Rates:\nJanuary 6, 13, 20, 27\nFebruary 3, 10, 17, 24\nMarch 2, 9, 16, 23, 30\nApril 6',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ResortServiceCard(
                        'Bus Ride Only',
                        busRideOnly,
                        busRideOnly * 30,
                      ),
                      ResortServiceCard(
                        'Bus Ride & Lift Ticket',
                        busRideAndLiftTicket,
                        busRideAndLiftTicket * 59,
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
