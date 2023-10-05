import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter/material.dart';
class Spinner extends StatelessWidget {
  const Spinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
              child: Column(
                children: [
                  LoadingAnimationWidget.staggeredDotsWave(
                  color: Color.fromRGBO(139, 130, 255, 1),
                  size: 100,
          ),

                  Text("Przyblizony czas oczekiwania - 3min")
                ],
              ),
          ),
        ],
      ),
    );
  }
}
