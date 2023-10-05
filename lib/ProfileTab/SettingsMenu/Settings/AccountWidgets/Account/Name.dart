import 'package:flutter/material.dart';

class Name extends StatefulWidget {
  Name({Key? key}) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  final _name = new TextEditingController();
  final _lastName = new TextEditingController();
  final _email = new TextEditingController();
  final _phone = new TextEditingController();
  final _location = new TextEditingController();
  var name = "Jan";
  var lastName = "Kowalski";
  var email = "";
  var phone = "";
  var location = "";
  var editMode;





  @override
  void initState() {
    super.initState();
    _name.text = "Jan";
    _lastName.text = "Kowalski";
    _email.text = "Kowalski@gmail.com";
    _phone.text = "123456789";
    _location.text = "Złota 44";
    editMode=false;




  }

  void editButton() {

    if (editMode == false) {
      FocusScopeNode currentFocus = FocusScope.of(context);
      BuildContext? dialogContext = null;
      setState(() {
        name = _name.text;
        lastName=_lastName.text;
        email=_email.text;
        phone=_phone.text;
        location=_location.text;

      });
      editMode = !editMode;

    }

  }
  void saveButton() {

    if (editMode == true) {
      FocusScopeNode currentFocus = FocusScope.of(context);
      BuildContext? dialogContext = null;
      setState(() {
        name = _name.text;
        lastName=_lastName.text;
        email=_email.text;
        phone=_phone.text;
        location=_location.text;

      });
      editMode = !editMode;

    }

  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Center(
        child: Container(
          width: screenSize.size.width * 0.9,
          child: Column(children: [
            CircleAvatar(radius: 47, backgroundColor: Colors.green),
            Text(name + " " + lastName),
            Text("Nazwa profilu"),
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              child: IconButton(
                  onPressed: () {
                    editButton();
                  },
                  icon: Icon(
                    Icons.mode_rounded,
                    size: 20,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: screenSize.size.width * 0.4,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Imię"),

                        ],
                      ),
                      TextField(

                        decoration: InputDecoration(
                          labelText: "First Name",
                          disabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.grey)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.purple)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.pink)),
                        ),
                        controller: _name,
                        // onSubmitted: (String value) {
                        //   nameButton();
                        // },
                        enabled: editMode,
                      )
                    ],
                  ),
                ),
                Container(
                  width: screenSize.size.width * 0.4,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Nazwisko"),

                        ],
                      ),
                      TextField(


                        controller: _lastName,
                        // enabled: lastNameInput,
                        // onSubmitted: (String value) {
                        //   lastNameButton();
                        // },
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: screenSize.size.width * 0.9,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("E-mail"),

                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.grey), //<-- SEE HERE
                      ),
                    ),
                    controller: _email,
                    enabled: editMode,
                    // onSubmitted: (String value) {
                    //   emailButton();
                    // },
                  )
                ],
              ),
            ),
            Container(
              width: screenSize.size.width * 0.9,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("nr telefonu"),

                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.grey), //<-- SEE HERE
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    controller: _phone,
                    enabled: editMode,
                    // onSubmitted: (String value) {
                    //   phoneButton();
                    // },
                  )
                ],
              ),
            ),
            Container(
              width: screenSize.size.width * 0.9,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Lokalizacja"),

                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.grey), //<-- SEE HERE
                      ),
                    ),
                    controller: _location,
                    enabled: editMode,
                    // onSubmitted: (String value) {
                    //   locationButton();
                    // },
                  )
                ],
              ),
            ),
            ElevatedButton(onPressed:()=>saveButton() , child: Text("Zapisz"))
          ]),
        ),
      ),
    );
  }
}
