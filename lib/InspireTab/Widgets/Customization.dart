import 'package:flutter/material.dart';
import '../../Data/OffersData.dart';
import 'dart:async';

class Customization extends StatefulWidget {
  final double sliderValue;
  final Function(double) updateSliderValue; // Declare the callback function

  Customization({Key? key, required this.sliderValue, required this.updateSliderValue})
      : super(key: key);

  @override
  State<Customization> createState() => _CustomizationState();
}

class _CustomizationState extends State<Customization> {
  double _slider2Val = 50.0;
  //late Timer _timer;

  @override
  // void initState() {
  //   super.initState();
  //   _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
  //     widget.updateSliderValue(widget.sliderValue);
  //
  //   });
  // }

  @override
  // void dispose() {
  //   _timer.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 0,
        bottom: 0,
        left: 0,
        right: 20,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: AlignmentDirectional.centerStart,
              child: Align(
                alignment: Alignment.center,
                child: Slider(
                  min: 0.0,
                  max: 1.0,
                  divisions: 10,
                  onChanged: (double value) {
                    setState(() {

                      widget.updateSliderValue(value);

                    });
                  },
                  value: widget.sliderValue,
                ),
              ),
            ),
          ),
          Text(
            'odl: ${(widget.sliderValue * 10).toStringAsFixed(1)}km',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
