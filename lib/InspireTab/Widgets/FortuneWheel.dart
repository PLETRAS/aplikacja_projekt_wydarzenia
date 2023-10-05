import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import '../../Data/OffersData.dart';
import 'package:provider/provider.dart';

final GlobalKey<_MyHomePageState> myHomePageKey = GlobalKey<_MyHomePageState>();

class MyHomePage extends StatefulWidget {
  late List<Place> closePlaceList;

  MyHomePage({Key? key, required this.closePlaceList}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  StreamController<int> selected = StreamController<int>();
  List<String> items = [];
  bool shouldStartWheel = false;

  @override
  void initState() {
    super.initState();
    items.clear();
    for (var place in widget.closePlaceList) {
      items.add(place.nazwa);
    }
    shouldStartWheel = false;
    selected.add(
      Fortune.randomInt(0, items.length),
    );
    Timer(Duration(seconds: 2), () {
      setState(() {
        shouldStartWheel = true;
      });
    });
  }

  void newList() {
    setState(() {
      items.clear();
      for (var place in widget.closePlaceList) {
        items.add(place.nazwa);
      }
    });
  }

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    return Container(
      child: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: screenSize.size.width,
              width: screenSize.size.width,
              child: FortuneWheel(
                indicators: <FortuneIndicator>[
                  FortuneIndicator(
                    alignment: Alignment.topCenter,
                    child: TriangleIndicator(
                      color: Colors.green,
                    ),
                  ),
                ],
                selected: selected.stream,
                animateFirst: shouldStartWheel, // Dodana linia kodu
                items: [
                  for (var it in items) FortuneItem(child: Text(it)),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                for (var place in widget.closePlaceList) {
                  print(place.nazwa);
                }
                setState(() {
                  shouldStartWheel = true; // Dodana linia kodu
                  selected.add(
                    Fortune.randomInt(0, items.length),
                  );
                });
              },
              child: Container(
                width: screenSize.size.width * 0.15,
                height: screenSize.size.width * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.lightBlue,
                ),
                child: Center(child: Icon(Icons.restart_alt)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
