import 'package:flutter/material.dart';

class grupa extends StatelessWidget {
  const grupa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Container(

    decoration: BoxDecoration(
    border: Border.all(
    color: Colors.black26,
    width: 2,
    ),
    borderRadius: BorderRadius.circular(18.0),
    ),

        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Expanded(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nazwa grupy",
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
                    Text(
                      "W klarowny sposob opisz ...",
                      style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ],),
              ),
              Row(children: [
                Column(children: [
                  CircleAvatar(radius: 15, backgroundColor: Colors.green),
                  CircleAvatar(radius: 15, backgroundColor: Colors.green),
                  CircleAvatar(radius: 15, backgroundColor: Colors.green),
                ],),
                Column(children: [
                  CircleAvatar(radius: 15, backgroundColor: Colors.green),
                  CircleAvatar(radius: 15, backgroundColor: Colors.green),
                  CircleAvatar(radius: 15, backgroundColor: Colors.green),
                ],)
              ],)
            ],),
        ),
      ),
    );
  }
}
