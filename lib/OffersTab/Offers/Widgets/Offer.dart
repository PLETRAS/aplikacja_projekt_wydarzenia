import 'package:flutter/material.dart';
import 'modalbottomsheet.dart';
import '../../../Data/OffersData.dart';
class Oferta extends StatelessWidget {

  final Place place;

  Oferta({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    return Column(
      children: [
        InkWell(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25.0),
                ),
              ),
              context: context,
              builder: (context) {
                return ModalBottomSheet();
              },
            );
          },
          child: Container(
            margin: const EdgeInsets.only(
                top: 10.0, bottom: 10.0, left: 0, right: 0),
            child: FractionallySizedBox(
                // heightFactor: 0.3,
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(

                      children: [
                        Container(
                          width: double.maxFinite,
                          height: screenSize.size.height * 0.18,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(14.0),
                            color: Colors.green,
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://picsum.photos/id/3/400/300'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                          child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                place.nazwa,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                //textAlign: TextAlign.center,
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type spec",
                                style: TextStyle(fontSize: 15),


                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Divider(
            thickness: 1,
            color: Color(0xFF999999),
            indent: 20,
            endIndent: 20,
          ),
        ),
      ],
    );
  }
}
