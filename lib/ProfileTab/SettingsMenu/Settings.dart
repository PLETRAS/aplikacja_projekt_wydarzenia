import 'package:aplikacja_projekt_wydarzenia/ProfileTab/SettingsMenu/Settings/LiveSupport.dart';
import 'package:aplikacja_projekt_wydarzenia/ProfileTab/SettingsMenu/Settings/Privacy.dart';
import 'package:aplikacja_projekt_wydarzenia/ProfileTab/SettingsMenu/Settings/Security.dart';
import 'package:aplikacja_projekt_wydarzenia/ProfileTab/SettingsMenu/Settings/Notifications.dart';
import 'package:aplikacja_projekt_wydarzenia/ProfileTab/SettingsMenu/Settings/TermsAndPolicy.dart';
import 'package:aplikacja_projekt_wydarzenia/ProfileTab/SettingsMenu/Settings/ContactSupport.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Settings/Account.dart';
import 'package:page_transition/page_transition.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: Scaffold(
              backgroundColor: Color.fromRGBO(230, 230, 230, 1),
                appBar: AppBar(
                  backgroundColor: Color.fromRGBO(230, 230, 230, 1),
                  title: Text(style: TextStyle(color: Colors.black), "Ustawienia"),

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
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            alignment: AlignmentDirectional.centerStart,
                            child: Text("Konto",style: TextStyle(fontSize: 20),)),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              InkWell(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      child: Icon(
                                        Icons.person,
                                        size: 35,
                                      ),
                                    ),
                                    Text(
                                      "Konto",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: AccountPage())),
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      child: Icon(
                                        Icons.lock,
                                        size: 35,
                                      ),
                                    ),
                                    Text(
                                      "Prywatność",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: PrivacyPage())),
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      child: Icon(
                                        Icons.shield,
                                        size: 35,
                                      ),
                                    ),
                                    Text(
                                      "bezpieczeństwo",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: SecurityPage())),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                        Container(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text("O nas",style: TextStyle(fontSize: 20),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(7))),

                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              InkWell(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      child: Icon(
                                        Icons.policy,
                                        size: 35,
                                      ),
                                    ),
                                    Text(
                                      "Polityka prywatności",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: TermsAndPolicyPage())),
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      child: Icon(
                                        Icons.contact_support_rounded,
                                        size: 35,
                                      ),
                                    ),
                                    Text(
                                      "Skontaktuj się z pomocą techniczną",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: ContactSupportPage())),
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      child: Icon(
                                        Icons.live_help,
                                        size: 35,
                                      ),
                                    ),
                                    Text(
                                      "Wsparcie na żywo",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: LiveSupportPage())),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                        Container(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text("Logowanie",style: TextStyle(fontSize: 20),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(7))),

                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              InkWell(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      child: Icon(
                                        Icons.logout,
                                        size: 35,
                                      ),
                                    ),
                                    Text(
                                      "Wyloguj się",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: NotificationsPage())),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ))),
      ),
    );
  }
}
