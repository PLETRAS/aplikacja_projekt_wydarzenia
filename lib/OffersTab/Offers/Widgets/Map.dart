//import 'dart:html';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static Future<void> openMap(var nazwa) async {
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$nazwa';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }

  static Future<void> openMap2(var nazwa) async {
    final uri = Uri.parse("https://hulakula.com.pl/");
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not open the map.';
    }
  }

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(52.273394718522354, 21.017069227448623),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hulakula",
                style: TextStyle(fontSize: 30),
              ),
              Text("jagiellońska 82B,adawdawdawfawasdasdfawf"),
            ],
          ),
        ),
        SizedBox(
          width:
              MediaQuery.of(context).size.width, // or use fixed size like 200
          height: 300,
          child: Scaffold(
            body:
                // currentLocation == null
                //  ? const Center(child: Text("Ładowanie"))
                //  :
                IgnorePointer(
              ignoring: true,
              child: GoogleMap(
                mapType: MapType.normal,
                zoomControlsEnabled: false,
                markers: {
                  Marker(
                      markerId: MarkerId("demo"),
                      position: LatLng(52.273394718522354, 21.017069227448623))
                },
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                openMap("hulakula");
              },
              child: Column(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 32,
                  ),
                  Text('Lokalizuj'),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                openMap2("https://hulakula.com.pl/");
              },
              child: Column(
                children: [
                  Icon(Icons.pageview_sharp),
                  Text('Strona'),
                ],
              ),
            ),

          ],
        )
      ],
    );
  }
}
