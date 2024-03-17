import 'package:flutter/material.dart';

class Settingscourse extends StatelessWidget {
  const Settingscourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("COURSE SETTINGS"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.library_books),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Allow similar course enquiry")),
                    ],
                  ),
                  Icon(Icons.check_box_outline_blank)
                ],
              ),
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 225, 225, 225),
            thickness: 1,
            height: 10,
            indent: 55,
            endIndent: 2,
          ),
          SizedBox(
            height: 10,
          )
        ]),
      ),
    );
  }
}
