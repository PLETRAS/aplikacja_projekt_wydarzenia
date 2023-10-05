import 'package:flutter/material.dart';
import 'LocationPhotos.dart';
import 'Map.dart';

class ModalBottomSheet extends StatelessWidget {
  ModalBottomSheet({Key? key}) : super(key: key);

  void asd(){

  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    return FractionallySizedBox(
      heightFactor: 0.88,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        child:
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0,4),
                    )],
                  ),
                  height: screenSize.size.height * 0.04,
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    ),
                    height: 4,
                    width: 50,
                  ),
                ),
                Container(

                  height: screenSize.size.height * 0.79,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          width: double.maxFinite,
                          height: screenSize.size.height * 0.20,
                          child: Image.network(
                              'https://picsum.photos/id/1/400/300',
                              fit: BoxFit.cover),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Hulakula",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '199zł',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 30)),
                                    TextSpan(text: '    '),
                                    TextSpan(
                                        text: '97 zł',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40)),
                                  ],
                                ),
                              ),
                              const Text(
                                "Opis",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing eLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteurlit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ExcepteurLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        LocationPhotos(),
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Opis",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Lorem ipsum dolor sit amet, consectetullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ExcepteurLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          child: MapSample(),
                        ),

                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: asd,
                  child: Container(
                    color: Colors.green,
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    height: screenSize.size.height*0.05,
                    child: Text(
                        "KUP TERAZ"
                    ),
                  ),
                )
              ],
            ),
        ),
      );
  }
}
