import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:square_in_app_payments/in_app_payments.dart';
import 'package:square_in_app_payments/models.dart' as models;

// ignore: must_be_immutable
class LiftTicketRateCard extends StatefulWidget {
  LiftTicketRateCard(
    this.ageGroup,
    this.liftTicketAmount,
    this.liftTicketCheckoutSum,
  );

  final String ageGroup;
  int liftTicketAmount;
  int liftTicketCheckoutSum;

  @override
  _LiftTicketRateCardState createState() => _LiftTicketRateCardState();
}

class _LiftTicketRateCardState extends State<LiftTicketRateCard> {
  _payment(priceValue) async {
    await InAppPayments.setSquareApplicationId(
      'sq0idp-KAq_aLzNKTxjL9wu2ztGMQ',
    );
    await InAppPayments.startCardEntryFlow(
      onCardNonceRequestSuccess: (models.CardDetails result) {
        backend(result, priceValue);
        try {
          InAppPayments.completeCardEntry(onCardEntryComplete: () => {});
        } catch (ex) {
          InAppPayments.showCardNonceProcessingError(ex.message);
        }
      },
      onCardEntryCancel: () {},
    );
  }

  Future<void> backend(models.CardDetails result, price) async {
    var chargeURL =
        'https://us-central1-squarepayment-flutter.cloudfunctions.net/squarePayment';
    var body = json.encode({'nonce': result.nonce, 'price': price});
    http.Response response;

    try {
      response = await http.post(
        chargeURL,
        body: body,
        headers: {
          'content-type': 'text/plain',
        },
      );
    } catch (error) {
      print(error.toString());
    }

    // data from firebase
    var responseBody = json.decode(response.body);

    if (response.statusCode == 200) {
      print('Success');
      print(responseBody.toString());
    } else {
      print('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    int price = widget.liftTicketCheckoutSum * widget.liftTicketAmount;
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        width: 200,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  widget.ageGroup,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        '\$${widget.liftTicketCheckoutSum * widget.liftTicketAmount}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text('Add'),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    child: AlertDialog(
                                      title: Text(
                                        "Checkout",
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Column(
                                        children: <Widget>[
                                          Text(
                                            'Cart:',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20.0),
                                            child: Text(
                                              widget.ageGroup,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
//                                        fontSize: 30,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20.0),
                                            child: Text(
                                              '\$${widget.liftTicketCheckoutSum * widget.liftTicketAmount}',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: FlatButton(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                  ),
                                                  color: Colors.blue,
                                                  textColor: Colors.white,
                                                  child: Text("Buy"),
                                                  onPressed: () =>
                                                      _payment(price),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: FlatButton(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                      side: BorderSide(
                                                          color: Colors.blue)),
                                                  color: Colors.white,
                                                  textColor: Colors.blue,
                                                  child: Text("Close"),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (widget.liftTicketAmount >= 1) {
                              widget.liftTicketAmount--;
                            }
                          });
                        },
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Text(
                        widget.liftTicketAmount.toString(),
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            widget.liftTicketAmount++;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class LiftTicket3PackCard extends StatefulWidget {
  LiftTicket3PackCard(
    this.ageGroup,
    this.liftTicket3PackAmount,
    this.liftTicket3PackCheckoutSum,
  );

  final String ageGroup;
  int liftTicket3PackAmount;
  int liftTicket3PackCheckoutSum;

  @override
  _LiftTicket3PackCardState createState() => _LiftTicket3PackCardState();
}

class _LiftTicket3PackCardState extends State<LiftTicket3PackCard> {
  _payment(priceValue) async {
    await InAppPayments.setSquareApplicationId(
      'sq0idp-KAq_aLzNKTxjL9wu2ztGMQ',
    );
    await InAppPayments.startCardEntryFlow(
      onCardNonceRequestSuccess: (models.CardDetails result) {
        backend(result, priceValue);
        try {
          InAppPayments.completeCardEntry(onCardEntryComplete: () => {});
        } catch (ex) {
          InAppPayments.showCardNonceProcessingError(ex.message);
        }
      },
      onCardEntryCancel: () {},
    );
  }

  Future<void> backend(models.CardDetails result, price) async {
    var chargeURL =
        'https://us-central1-squarepayment-flutter.cloudfunctions.net/squarePayment';
    var body = json.encode({'nonce': result.nonce, 'price': price});
    http.Response response;

    try {
      response = await http.post(
        chargeURL,
        body: body,
        headers: {
          'content-type': 'text/plain',
        },
      );
    } catch (error) {
      print(error.toString());
    }

    // data from firebase
    var responseBody = json.decode(response.body);

    if (response.statusCode == 200) {
      print('Success');
      print(responseBody.toString());
    } else {
      print('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    int price =
        widget.liftTicket3PackCheckoutSum * widget.liftTicket3PackAmount;
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        width: 200,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  widget.ageGroup,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        '\$${widget.liftTicket3PackCheckoutSum * widget.liftTicket3PackAmount}',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text('Add'),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    child: AlertDialog(
                                      title: Text(
                                        "Checkout",
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Column(
                                        children: <Widget>[
                                          Text(
                                            'Cart:',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20.0),
                                            child: Text(
                                              widget.ageGroup,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
//                                        fontSize: 30,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20.0),
                                            child: Text(
                                              '\$${widget.liftTicket3PackCheckoutSum * widget.liftTicket3PackAmount}',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: FlatButton(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                  ),
                                                  color: Colors.blue,
                                                  textColor: Colors.white,
                                                  child: Text("Buy"),
                                                  onPressed: () =>
                                                      _payment(price),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: FlatButton(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                      side: BorderSide(
                                                          color: Colors.blue)),
                                                  color: Colors.white,
                                                  textColor: Colors.blue,
                                                  child: Text("Close"),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (widget.liftTicket3PackAmount >= 1) {
                              widget.liftTicket3PackAmount--;
                            }
                          });
                        },
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Text(
                        widget.liftTicket3PackAmount.toString(),
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            widget.liftTicket3PackAmount++;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
