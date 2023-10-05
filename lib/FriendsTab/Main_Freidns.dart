// Main_Freidns.dart
import 'package:flutter/material.dart';
import './Widgets/Osoba.dart';
import './Widgets/Grupa.dart';
class FriendsTab extends StatelessWidget {
  const FriendsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

                margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: Text(
                  "Active friends",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),


          Center(
            child: Container(
              width: screenSize.size.width,
              margin: const EdgeInsets.only(
                  top: 0.0, bottom: 0, left: 0, right: 0),
              child: Container(
                child: Column(
                  children: [
                    osoba(),

                    osoba(),

                    osoba(),

                    grupa(),

                    osoba(),

                    osoba(),

                    grupa(),

                    grupa(),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:  EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Divider(
        thickness: 1,
        color: Color(0xFF999999),
        indent: 20,
        endIndent: 20,
      ),
    );
  }
}


