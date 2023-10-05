import 'package:flutter/material.dart';

// Adapted from Tensor Programming's multi-page app tutorial:
// https://github.com/tensor-programming/dart_flutter_multi_page_app.
class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(style: TextStyle(color: Colors.black), "Ulubione miejsca"),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation:0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
