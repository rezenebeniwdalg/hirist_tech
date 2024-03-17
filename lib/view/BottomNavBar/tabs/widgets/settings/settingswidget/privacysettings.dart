import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hirist_tech/globalwidget/LogCustbutton.dart';

class SettingsPrivacy extends StatelessWidget {
  const SettingsPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        centerTitle: true,
        title: Text("PRIVACY SETTINGS"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 200,
                        child: Text("Hide profile from all recruiters"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 50,
                        width: 320,
                        child: Text(
                            "Your profile will be only visible against positions you explicitly apply for"),
                      )
                    ],
                  )),
                  Container(
                    child: Icon(Icons.radio_button_checked),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 200,
                        child: Text("Block Companies"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 180,
                        width: 373,
                        child: Text(
                          "You may block certain companies from viewing your profile. Please enter the domain name(ex: ibm.com) of companies you wish to block. Any recruiter with email-address from this domain name(ex: xyz@ibm.com) will not be able to view your profile. You may block as many companies as you want.",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 260,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey.shade300)),
                            child: TextFormField(
                                decoration:
                                    InputDecoration(border: InputBorder.none)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: CustomButton(text: "BLOCK"),
                          ),
                        ],
                      )
                    ],
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
