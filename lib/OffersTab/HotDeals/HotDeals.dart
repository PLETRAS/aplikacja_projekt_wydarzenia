import 'package:flutter/material.dart';
import '../../InspireTab/Main_InspireTab.dart';
import './Widgets/appBanner.dart';
import './Widgets/Banneritem.dart';



class HotDeals extends StatefulWidget {

  final Function(int) onButtonClick;

  HotDeals({required this.onButtonClick});
  @override
  State<HotDeals> createState() => _HotDeals();
}

class _HotDeals extends State<HotDeals> {
  var _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context);
    return InkWell(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: Container(
            width: screenSize.size.width*0.92,
            child: Text("Gorące okazje",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          //margin: const EdgeInsets.symmetric(vertical: 16.0),
          height: screenSize.size.height*0.37,
          child: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index % appBannerList.length;
              });
            },
            controller: PageController(
              viewportFraction: 0.75,
              initialPage: 5002, //zmieniac
            ),
            itemCount: 10000, // set a large item count
            itemBuilder: (context, index) {
              var banner = appBannerList[index % appBannerList.length];
              var _scale = _selectedIndex == index % appBannerList.length ? 1.0 : 0.93;
              return TweenAnimationBuilder(
                duration: const Duration(milliseconds: 350),
                tween: Tween(begin: _scale, end: _scale),
                curve: Curves.ease,
                child: BannerItem(
                  appBanner: banner,onButtonClick: widget.onButtonClick,
                ),
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: value,
                    child: child,
                  );
                },
              );
            },
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                appBannerList.length,
                    (index) =>
                    Indicator(isActive: _selectedIndex == index%appBannerList.length ? true : false))
          ],
        )
      ]),

    );
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
      margin: const EdgeInsets.symmetric(horizontal: 9.0),
      width: isActive ? 10.0 : 10.0,
      height: 10.0,
      decoration: BoxDecoration(
          color: isActive ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(9.0)),
    );
  }
}