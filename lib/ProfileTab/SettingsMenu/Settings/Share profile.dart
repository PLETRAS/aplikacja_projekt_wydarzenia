import 'package:flutter/material.dart';

// Adapted from Tensor Programming's multi-page app tutorial:
// https://github.com/tensor-programming/dart_flutter_multi_page_app.
class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(style: TextStyle(color: Colors.black), "Konto"),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
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
      ),
    );
  }
}