import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:square_in_app_payments/in_app_payments.dart';
import 'package:square_in_app_payments/models.dart' as models;

// ignore: must_be_immutable
class GroupRateCard extends StatefulWidget {
  GroupRateCard(
    this.ageGroup,
    this.groupTicketAmount,
    this.groupTicketCheckoutSum,
//    this.content,
//    this.price,
//    this.buttonText,
//    this.checkoutPrice,
//    this.ageCheckout,
  );

//  final String ageGroup, content, price, buttonText, checkoutPrice, ageCheckout;

  final String ageGroup;
  int groupTicketAmount;
  int groupTicketCheckoutSum;

  @override
  _GroupRateCardState createState() => _GroupRateCardState();
}

class _GroupRateCardState extends State<GroupRateCard> {
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
    int price = widget.groupTicketCheckoutSum * widget.groupTicketAmount;
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
                        '\$${widget.groupTicketCheckoutSum * widget.groupTicketAmount}',
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
                                              '\$${widget.groupTicketCheckoutSum * widget.groupTicketAmount}',
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
                            if (widget.groupTicketAmount >= 1) {
                              widget.groupTicketAmount--;
                            }
                          });
                        },
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Text(
                        widget.groupTicketAmount.toString(),
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
                            widget.groupTicketAmount++;
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

//class FamilyGroupRateCard extends StatefulWidget {
//  FamilyGroupRateCard({
//    @required this.title,
//    this.content,
//    this.price,
//    this.buttonText,
//    this.checkoutPrice,
//    this.ageCheckout,
//  });
//
//  final String title, content, price, buttonText, checkoutPrice, ageCheckout;
//
//  @override
//  _FamilyGroupRateCardState createState() => _FamilyGroupRateCardState();
//}
//
//class _FamilyGroupRateCardState extends State<FamilyGroupRateCard> {
//  bool _isVisible = true;
//
//  void visibleToggle() {
//    setState(() {
//      _isVisible = !_isVisible;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: const EdgeInsets.all(18.0),
//      child: Card(
//        shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.circular(12.0),
//        ),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.all(12.0),
//              child: Text(
//                widget.title,
//                style: TextStyle(
//                  fontSize: 15,
//                  fontWeight: FontWeight.bold,
//                ),
//              ),
//            ),
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: Container(
//                height: 35,
//                child: ListView(
//                  scrollDirection: Axis.horizontal,
//                  shrinkWrap: true,
//                  children: <Widget>[
//                    Padding(
//                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
//                      child: Visibility(
//                        visible: _isVisible,
//                        child: Tooltip(
//                          message: 'Press X to remove cart item',
//                          child: FlatButton(
//                            shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(18.0),
//                            ),
//                            color: Colors.blue,
//                            textColor: Colors.white,
//                            child: Row(
//                              children: <Widget>[
//                                Text('Senior Plus (70+)'),
//                                IconButton(
//                                  icon: Icon(Icons.clear),
//                                  onPressed: visibleToggle,
//                                ),
//                              ],
//                            ),
//                            onPressed: () {},
//                          ),
//                        ),
//                      ),
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
//                      child: Visibility(
//                        visible: _isVisible,
//                        child: Tooltip(
//                          message: 'Press X to remove cart item',
//                          child: FlatButton(
//                            shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(18.0),
//                            ),
//                            color: Colors.blue,
//                            textColor: Colors.white,
//                            child: Row(
//                              children: <Widget>[
//                                Text('Senior (65-69)'),
//                                IconButton(
//                                  icon: Icon(Icons.clear),
//                                  onPressed: visibleToggle,
//                                ),
//                              ],
//                            ),
//                            onPressed: () {},
//                          ),
//                        ),
//                      ),
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
//                      child: Visibility(
//                        visible: _isVisible,
//                        child: Tooltip(
//                          message: 'Press X to remove cart item',
//                          child: FlatButton(
//                            shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(18.0),
//                            ),
//                            color: Colors.blue,
//                            textColor: Colors.white,
//                            child: Row(
//                              children: <Widget>[
//                                Text('Adult (30-64)'),
//                                IconButton(
//                                  icon: Icon(Icons.clear),
//                                  onPressed: visibleToggle,
//                                ),
//                              ],
//                            ),
//                            onPressed: () {},
//                          ),
//                        ),
//                      ),
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
//                      child: Visibility(
//                        visible: _isVisible,
//                        child: Tooltip(
//                          message: 'Press X to remove cart item',
//                          child: FlatButton(
//                            shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(18.0),
//                            ),
//                            color: Colors.blue,
//                            textColor: Colors.white,
//                            child: Row(
//                              children: <Widget>[
//                                Text('20\'s (20-29)'),
//                                IconButton(
//                                  icon: Icon(Icons.clear),
//                                  onPressed: visibleToggle,
//                                ),
//                              ],
//                            ),
//                            onPressed: () {},
//                          ),
//                        ),
//                      ),
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
//                      child: Visibility(
//                        visible: _isVisible,
//                        child: Tooltip(
//                          message: 'Press X to remove cart item',
//                          child: FlatButton(
//                            shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(18.0),
//                            ),
//                            color: Colors.blue,
//                            textColor: Colors.white,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Text('Teen (13-19)'),
//                                IconButton(
//                                  icon: Icon(Icons.clear),
//                                  onPressed: visibleToggle,
//                                ),
//                              ],
//                            ),
//                            onPressed: () {},
//                          ),
//                        ),
//                      ),
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
//                      child: Visibility(
//                        visible: _isVisible,
//                        child: Tooltip(
//                          message: 'Press X to remove cart item',
//                          child: FlatButton(
//                            shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(18.0),
//                            ),
//                            color: Colors.blue,
//                            textColor: Colors.white,
//                            child: Row(
//                              children: <Widget>[
//                                Text('Kid (6-12)'),
//                                IconButton(
//                                  icon: Icon(Icons.clear),
//                                  onPressed: visibleToggle,
//                                ),
//                              ],
//                            ),
//                            onPressed: () {},
//                          ),
//                        ),
//                      ),
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
//                      child: Visibility(
//                        visible: _isVisible,
//                        child: Tooltip(
//                          message: 'Press X to remove cart item',
//                          child: FlatButton(
//                            shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(18.0),
//                            ),
//                            color: Colors.blue,
//                            textColor: Colors.white,
//                            child: Row(
//                              children: <Widget>[
//                                Text('Child (5 & under)'),
//                                IconButton(
//                                  icon: Icon(Icons.clear),
//                                  onPressed: visibleToggle,
//                                ),
//                              ],
//                            ),
//                            onPressed: () {},
//                          ),
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//            Padding(
//              padding: const EdgeInsets.only(top: 12.0, left: 12.0),
//              child: Text(widget.content),
//            ),
//            Padding(
//              padding: const EdgeInsets.all(12.0),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  Flexible(
//                    flex: 3,
//                    child: Text(
//                      widget.price,
//                      style: TextStyle(
//                        fontSize: 30,
//                        color: Colors.green,
//                      ),
//                    ),
//                  ),
//                  Flexible(
//                    flex: 3,
//                    child: FlatButton(
//                      shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(18.0),
//                      ),
//                      color: Colors.blue,
//                      textColor: Colors.white,
//                      child: Text(widget.buttonText),
//                      onPressed: () {
//                        showDialog(
//                          context: context,
//                          builder: (BuildContext context) {
//                            return Column(
//                              mainAxisSize: MainAxisSize.min,
//                              children: <Widget>[
//                                Container(
//                                  child: AlertDialog(
//                                    title: Text(
//                                      "Checkout",
//                                      textAlign: TextAlign.center,
//                                    ),
//                                    content: Column(
//                                      children: <Widget>[
//                                        Text(
//                                          'Cart:',
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                              fontSize: 30,
//                                              fontWeight: FontWeight.bold),
//                                        ),
//                                        Padding(
//                                          padding:
//                                              const EdgeInsets.only(top: 20.0),
//                                          child: Text(
//                                            widget.ageCheckout,
//                                            textAlign: TextAlign.center,
//                                            style: TextStyle(
////                                        fontSize: 30,
//                                                fontWeight: FontWeight.bold),
//                                          ),
//                                        ),
//                                        Padding(
//                                          padding:
//                                              const EdgeInsets.only(top: 20.0),
//                                          child: Text(
//                                            widget.checkoutPrice,
//                                            textAlign: TextAlign.center,
//                                            style: TextStyle(
//                                                fontSize: 30,
//                                                color: Colors.green,
//                                                fontWeight: FontWeight.bold),
//                                          ),
//                                        ),
//                                        Row(
//                                          mainAxisAlignment:
//                                              MainAxisAlignment.spaceBetween,
//                                          children: <Widget>[
//                                            Padding(
//                                              padding:
//                                                  const EdgeInsets.all(8.0),
//                                              child: FlatButton(
//                                                shape: RoundedRectangleBorder(
//                                                    borderRadius:
//                                                        BorderRadius.circular(
//                                                            18.0),
//                                                    side: BorderSide(
//                                                        color: Colors.blue)),
//                                                color: Colors.white,
//                                                textColor: Colors.blue,
//                                                child: Text("Close"),
//                                                onPressed: () {
//                                                  Navigator.of(context).pop();
//                                                },
//                                              ),
//                                            ),
//                                            Padding(
//                                              padding:
//                                                  const EdgeInsets.all(8.0),
//                                              child: FlatButton(
//                                                shape: RoundedRectangleBorder(
//                                                  borderRadius:
//                                                      BorderRadius.circular(
//                                                          18.0),
//                                                ),
//                                                color: Colors.blue,
//                                                textColor: Colors.white,
//                                                child: Text("Buy"),
//                                                onPressed: () {
//                                                  Navigator.of(context).pop();
//                                                },
//                                              ),
//                                            ),
//                                          ],
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            );
//                          },
//                        );
//                      },
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
