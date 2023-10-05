import 'package:flutter/material.dart';
class osoba extends StatelessWidget {
  const osoba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Container(

      decoration: BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 0.07)
    //   border: Border.all(
    //   color: Colors.black26,
    //   width: 2,
    // ),
    // borderRadius: BorderRadius.circular(18.0),
    ),

    child: Padding(
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    child:
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(radius: 30, backgroundColor: Colors.green),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Imię Nazwisko",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "opstatnio widziany w okoliczach mokotow",
                      style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Chętny na gre w kręgle",
                      style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),

        ],

      ),
    ),
    ),
    );
  }
}