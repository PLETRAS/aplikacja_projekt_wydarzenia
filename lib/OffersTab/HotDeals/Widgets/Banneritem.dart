import 'package:flutter/material.dart';
import 'appBanner.dart';


class BannerItem extends StatelessWidget {

  final AppBanner appBanner;
  final Function(int) onButtonClick;



  BannerItem({
    Key? key,
    required this.appBanner,
    required this.onButtonClick,
  }) : super(key: key);

  var name = "hulakula";
  var price = 97;
  var photo;
  var link;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: InkWell(
        child: Container(
          //margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
              color: Colors.blue
              // gradient: const LinearGradient(
              //   colors: [Colors.deepOrange, Colors.orangeAccent],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              //   stops: [0.4, 0.7],
              //   tileMode: TileMode.repeated,
              // ),
            ),
          child: FractionallySizedBox(
            widthFactor: 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(appBanner.title,style: TextStyle(fontSize: 30),),
                    Text("$price zł",style: TextStyle(fontSize: 30),),
                  ],
                ),
                Container(
                  height: screenSize.size.height*0.16,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    image: DecorationImage(
                      image: NetworkImage(appBanner.thumbnailUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                InkWell(child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Odkryj",style: TextStyle(fontSize: 30),),
                    Icon(Icons.arrow_forward,size: 30,)
                  ],
                ),)
              ],
            ),
          ),
        ),
        onTap: () {

           int  valueD=appBanner.page;


          onButtonClick(valueD); // przekazywanie wartości z klasy D do klasy A
        },
      ),
    );
  }
}

// class BannerItem extends StatelessWidget {
//   final AppBanner appBanner;
//   const BannerItem({
//     Key? key,
//     required this.appBanner, // wporadniku nie ma required u mnie bez tego nie dziala :(
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,
//       margin: const EdgeInsets.symmetric(horizontal: 16.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20.0),
//         image: DecorationImage(
//           image: NetworkImage(appBanner.thumbnailUrl),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: DefaultTextStyle(
//           style: TextStyle(color: Colors.white, fontSize: 20.0),
//           child: Stack(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                     color: Color.fromRGBO(0, 0, 0, 0.3),
//                     borderRadius: BorderRadius.circular(20.0)),
//               ),
//               Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Text('Title'.toUpperCase()),
//                     Container(
//                         width: 200,
//                         child: Text(
//                           appBanner.title.toUpperCase(),
//                           textAlign: TextAlign.center,
//                         ))
//                   ],
//                 ),
//               )
//             ],
//           )),
//     );
//   }
// }
