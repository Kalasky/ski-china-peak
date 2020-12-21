import 'package:flutter/material.dart';
import 'package:skichinapeak/pages/maps.dart';
import './pages/lessons_learn.dart';
import './pages/winter_season_passes.dart';
import './pages/stay_at_the_peak.dart';
import './pages/attractions.dart';
import './pages/boating_gas_rancheria.dart';
import './pages/contact.dart';
import './pages/dining.dart';
import './pages/disc_golf.dart';
import './pages/field_trips.dart';
import './pages/gift_cards.dart';
import './pages/important.dart';
import './pages/sport_shop.dart';
import './pages/scenic_rides_biking.dart';
import './pages/weddings.dart';
import './pages/repairs.dart';
import './pages/more.dart';
import './pages/safety.dart';
import './components/map_sizes.dart';
import './components/map_view_types.dart';
import './pages/season_passes.dart';
import './pages/lift_tickets.dart';
import './pages/group_rates.dart';
import './pages/lessons.dart';
import './pages/rentals.dart';
import './pages/lodging.dart';
import './pages/resort_services.dart';
import './pages/summer.dart';
import './pages/welcome_screen.dart';
import './pages/rental_form.dart';
import './pages/helmet_form.dart';
import './pages/lesson_form.dart';
import './pages/wedding_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'China Peak',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('China Peak'),
      ),
      // Drawer
      drawer: Drawer(
        child: (ListView(
          children: <Widget>[
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LessonsLearn()),
                );
              },
            ),
            ListTile(
              title: Text('Welcome'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Lift Tickets'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LiftTickets()),
                );
              },
            ),
            ListTile(
              title: Text('Stay At The Peak'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StayAtThePeak()),
                );
              },
            ),
            ListTile(
              title: Text('Winter Season Passes'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WinterSeasonPasses()),
                );
              },
            ),
            ListTile(
              title: Text('Attractions'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Attractions()),
                );
              },
            ),
            ListTile(
              title: Text('Boating Gas - Rancheria'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BoatingGasRancheria()),
                );
              },
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              },
            ),
            ListTile(
              title: Text('Dining'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dining()),
                );
              },
            ),
            ListTile(
              title: Text('Disc Golf'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DiscGolf()),
                );
              },
            ),
            ListTile(
              title: Text('Field Trips'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FieldTrips()),
                );
              },
            ),
            ListTile(
              title: Text('Gift Cards'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GiftCards()),
                );
              },
            ),
            ListTile(
              title: Text('Group Rates'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GroupRates()),
                );
              },
            ),
            ListTile(
              title: Text('Season Passes'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeasonPasses()),
                );
              },
            ),
            ListTile(
              title: Text('Lift Tickets'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LiftTickets()),
                );
              },
            ),
            ListTile(
              title: Text('Lessons'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lessons()),
                );
              },
            ),
            ListTile(
              title: Text('Rentals'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Rentals()),
                );
              },
            ),
            ListTile(
              title: Text('Rental Form'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RentalForm()),
                );
              },
            ),
            ListTile(
              title: Text('Helmet Form'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelmetForm()),
                );
              },
            ),
            ListTile(
              title: Text('Wedding Form'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WeddingForm()),
                );
              },
            ),
            ListTile(
              title: Text('Lesson Form'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LessonForm()),
                );
              },
            ),
            ListTile(
              title: Text('Lodging'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lodging()),
                );
              },
            ),
            ListTile(
              title: Text('Summer'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Summer()),
                );
              },
            ),
            ListTile(
              title: Text('Covid/Health'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Important()),
                );
              },
            ),
            ListTile(
              title: Text('Sport Shop'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SportShop()),
                );
              },
            ),
            ListTile(
              title: Text('Scenic Rides - Mtn Biking'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScenicRidesBiking()),
                );
              },
            ),
            ListTile(
              title: Text('Weddings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Weddings()),
                );
              },
            ),
            ListTile(
              title: Text('Repairs'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Repairs()),
                );
              },
            ),
            ListTile(
              title: Text('Resort Services'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResortService()),
                );
              },
            ),
            ListTile(
              title: Text('Safety'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Safety()),
                );
              },
            ),
            ListTile(
              title: Text('More'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => More()),
                );
              },
            ),
            ListTile(
              title: Text('Map View Types'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapViewTypes()),
                );
              },
            ),
            ListTile(
              title: Text('Map Size Variants'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapSizes()),
                );
              },
            ),
            ListTile(
              title: Text('Custom Path Points'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomPathMap()),
                );
              },
            ),
          ],
        )),
      ),
      body: Container(
        child: Text('Important / Attractions'),
      ),
    );
  }
}

//class Home extends StatefulWidget {
//  @override
//  _HomeState createState() => _HomeState();
//}
//
//class _HomeState extends State<Home> {
//  int _currentIndex = 0;
//  final List<Widget> _children = [
//    Test(),
//    SocialMedias(),
//    Test(),
////    Landing(),
//  ];
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: _children[_currentIndex],
//      bottomNavigationBar: BottomNavigationBar(
//        onTap: onTabTapped, // new
//        currentIndex: _currentIndex,
//        items: [
//          new BottomNavigationBarItem(
//            icon: Icon(Icons.home),
//            title: Text('Winter'),
//          ),
//          new BottomNavigationBarItem(
//            icon: Icon(Icons.mail),
//            title: Text('Activities'),
//          ),
//          new BottomNavigationBarItem(
//              icon: Icon(Icons.person), title: Text('Booking'))
//        ],
//      ),
//    );
//  }
//
//  void onTabTapped(int index) {
//    setState(() {
//      _currentIndex = index;
//    });
//  }
//}
