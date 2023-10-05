import 'package:flutter/material.dart';

import './SettingsMenu/Settings.dart';
import './SettingsMenu/FavoritePlaces.dart';
import './SettingsMenu/Premium.dart';
import './SettingsMenu/PrivacyPolicy.dart';
import './SettingsMenu/Referal.dart';
import 'OffersTab/Offers/Widgets/Offer.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),

        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          profil(),
        ],
      ),
      endDrawer: Menuprofilu(),
    );
  }
}

class profil extends StatelessWidget {
  profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.fromLTRB(0, screenSize.size.height * 0.10, 0, 0),
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            CircleAvatar(radius: 80, backgroundColor: Colors.green),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: Text(
                "Name",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Likes",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: screenSize.size.width * 0.92,
              child: Column(
                children: [
                  oferta(),
                  oferta(),
                  oferta(),
                  oferta(),
                  oferta(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menuprofilu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ustawienia'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Poleć znajomego'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReferalPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.workspace_premium),
            title: Text('2night plus'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PremiumPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class oferta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 0, right: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hulakula -50%",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Zaproś 3 osoby....",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.left,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          CircleAvatar(radius: 47, backgroundColor: Colors.green),
        ],
      ),
    );
  }
}
