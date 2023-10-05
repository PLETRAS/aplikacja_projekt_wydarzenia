
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'OffersTab/Main_OffersTab.dart';
import './FriendsTab/Main_Freidns.dart';
import './ProfileTab/Main_ProfileTab.dart';
import 'InspireTab/Main_InspireTab.dart';
import 'OffersTab/HotDeals/Widgets/Banneritem.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily),

      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {






  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedScreenIndex = 0;

  late final List _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      OffersTab(onValueChanged: _updateValue,onButtonClick: _updateValue2),
      //FriendsTab(),
      InspireTab(),
      ProfileTab(),
    ];
  }

  void _updateValue2(int valueA) {
    setState(() {
      _selectedScreenIndex = valueA;
    });
  }


  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  void _updateValue(int newValue) {
    setState(() {
      _selectedScreenIndex = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_selectedScreenIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedScreenIndex,
          onTap: _selectScreen,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.local_offer_sharp), label: 'Oferty'),
            BottomNavigationBarItem(icon: Icon(Icons.lightbulb), label: 'Inspiracja'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          ],
        ),
      ),
    );
  }
}