import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FacebookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _facebookURL,
      child: Image.network(
          'https://louisville.edu/medicine/departments/biochemistry/our_people/student-directories/networking-icons/facebook-logo/image'),
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

class TwitterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _twitterURL,
      child: Image.network(
          'https://lh3.googleusercontent.com/proxy/zdgMvizYjhR9YguVILPp0kBFqgQaPFAKD1GoNpTLduKTSfe4Rg9SYmaLUVQ8r8vvvBmMfWqCJbOfzOleCcNdofKv5RoUEEDOHSW5dFXSIhV6xWiFFwc'),
    );
  }
}

_twitterURL() async {
  const url = 'https://twitter.com/China_Peak';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class YouTubeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _youtubeURL,
      child: Image.network(
          'https://lh3.googleusercontent.com/proxy/zXt0tkcGAHrzdmOZgU6MbM-aomQmefVQauqFHXydk2sBlp9UeKhG5o4CuD93cM1kEj-5p0o-YyQmTrlr-Mvuv_e4wYXX9FPk0PrahMIjzgPP5DdeATI'),
    );
  }
}

_youtubeURL() async {
  const url = 'https://www.youtube.com/user/ChinaPeakTV';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class InstagramButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _instagramURL,
      child: Image.network(
          'https://instagram-brand.com/wp-content/themes/ig-branding/assets/assets.images/ig-logo-email.png'),
    );
  }
}

_instagramURL() async {
  const url = 'https://www.instagram.com/skichinapeak/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
