import 'package:flutter/material.dart';
import './SearchingBar/SearchingBar.dart';
import './HotDeals/HotDeals.dart';
import './Offers/Offers.dart';

class OffersTab extends StatelessWidget {
  final Function(int) onButtonClick;


  final ValueChanged<int> onValueChanged;
  var _selectedIndex = 0;
  OffersTab({required this.onValueChanged,required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // IconButton(
          //   onPressed: () {
          //     onValueChanged(1);
          //   },
          //   icon: Icon(Icons.favorite),
          // ),
          //const SearchBar(),
          HotDeals(onButtonClick: onButtonClick),
          Offers(),
        ],
      ),
    );
  }
}