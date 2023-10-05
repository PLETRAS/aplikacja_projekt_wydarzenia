import 'package:aplikacja_projekt_wydarzenia/InspireTab/Widgets/Customization.dart';
import 'package:flutter/material.dart';
import '../Data/OffersData.dart';
import 'Widgets/FortuneWheel.dart';
import 'package:provider/provider.dart';
import 'Widgets/FortuneWheel.dart';

class InspireTab extends StatefulWidget {
  InspireTab({Key? key}) : super(key: key);

  @override
  State<InspireTab> createState() => _InspireTabState();
}
class _InspireTabState extends State<InspireTab> {

//   void updateSliderValue(double newValue) {
//     setState(() {
//       closeplaceList.clear();
//       slider.slider1Val = newValue;
//
//       for (int i = 0; i < placeList.length; i++) {
//         if (placeList[i].x < slider.slider1Val) {
//           closeplaceList.add(placeList[i]);
//         }
//       }
//
//     });
//     final inspireTabProvider = Provider.of<InspireTabProvider>(context, listen: false);
//     inspireTabProvider.updateSliderValue(newValue);
//     final myHomePage = context.read<MyHomePageState>();
//     myHomePage.newList();
// //print(slider.slider1Val);
//   }
  void initState() {
    super.initState();
    closeplaceList.clear();
    for (int i = 0; i < placeList.length; i++) {
      if (placeList[i].x <= slider1Val) {
        closeplaceList.add(placeList[i]);
      }
    }
  }

  void updateSliderValue(double newValue) {
    setState(() {
      closeplaceList.clear();
      slider1Val = newValue;
      for (int i = 0; i < placeList.length; i++) {
        if (placeList[i].x <= slider1Val) {
          closeplaceList.add(placeList[i]);
        }
      }
    });
    final myHomePage = myHomePageKey.currentState;
    myHomePage?.newList();
  }
  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        MyHomePage(
          key: myHomePageKey,
          closePlaceList: closeplaceList,
        ),
        Customization(
          sliderValue: slider1Val,
          updateSliderValue: updateSliderValue, // Pass the callback function
        ),
      ],
    );


  }
}

