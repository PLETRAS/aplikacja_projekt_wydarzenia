import 'package:flutter/material.dart';
import 'Widgets/Offer.dart';
import '../../Data/OffersData.dart';
class Offers extends StatelessWidget {
  Offers({Key? key}) : super(key: key);
  var a = placeList[0].nazwa;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screenSize.size.width*0.92,
              child: const Text(
                "Oferty",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            FractionallySizedBox(
              //heightFactor: 0.3,
              child: Container(
                width: screenSize.size.width*0.92,
                child: Center(
                  child: Column(
                    children: [
                      for(int i =0;i<placeList.length;i++)
                        Oferta(place: placeList[i]),


                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
