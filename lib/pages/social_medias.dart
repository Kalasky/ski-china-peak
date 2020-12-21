import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Medias'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Facebook',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: _facebookURL,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Card(
                        color: Colors.lightBlueAccent,
                        elevation: 0.0,
                        child: Container(
                          height: 210.0,
                          width: 330.0,
                          padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/facebook_logo.png'),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.centerRight,
                            ),
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                    text: 'Text\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      height: 1.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Text',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      height: 1.0,
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

_facebookURL() async {
  const url = 'https://www.facebook.com/chinapeak';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
