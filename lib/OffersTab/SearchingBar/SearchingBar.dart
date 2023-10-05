
import 'package:flutter/material.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

Widget build(BuildContext context) {
    var screenSize= MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: screenSize.size.height*0.06,
            height: screenSize.size.height*0.06,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: //animation.value > 1
                //?
                const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),

                )
              //: BorderRadius.circular(50)
            ),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),


          Container(
            width: screenSize.size.width*0.74,
            height: screenSize.size.height*0.06,
            child: Row(

              children: [
                Container(
                  width: screenSize.size.width*0.74,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(

                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )),
                  child: const Padding(
                    padding: EdgeInsets.only(top:2,left: 0, bottom: 5),
                    child: TextField(
                      cursorColor: Colors.white12,
                      style: TextStyle(color: Colors.white,fontSize: 20),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),

        ],
      ),
    );
  }
}