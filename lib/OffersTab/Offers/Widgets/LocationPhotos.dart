import 'package:flutter/material.dart';
import 'appBaner.dart';
import 'Photos.dart';
class LocationPhotos extends StatefulWidget {
  const LocationPhotos ({Key? key}) : super(key: key);

  @override
  State<LocationPhotos > createState() => _LocationPhotosState();
}

class _LocationPhotosState extends State<LocationPhotos > {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize= MediaQuery.of(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

      Container(
        margin: const EdgeInsets.symmetric(vertical: 16.0),
        height: screenSize.size.height*0.20,
        child: PageView.builder(
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          controller: PageController(viewportFraction: 0.75),
          itemCount: appBannerList.length,
          itemBuilder: (context, index) {
            var banner = appBannerList[index];
            var _scale = _selectedIndex == index ? 1.0 : 0.95;
            return TweenAnimationBuilder(
              duration: const Duration(milliseconds: 350),
              tween: Tween(begin: _scale, end: _scale),
              curve: Curves.ease,
              child: BannerItem(
                appBanner: banner,
              ),
              builder: (context, value, child) {
                return Transform.scale(
                  scale: value,
                  child: child,
                );
              },
            );
          },
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              appBannerList.length,
                  (index) =>
                  Indicator(isActive: _selectedIndex == index ? true : false))
        ],
      )
    ]);
  }
}
//nwm czy to tutaj
class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 350),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: isActive ? 8.0 : 8.0,
      height: 8.0,
      decoration: BoxDecoration(
          color: isActive ? Colors.orange : Colors.grey,
          borderRadius: BorderRadius.circular(8.0)),
    );
  }
}