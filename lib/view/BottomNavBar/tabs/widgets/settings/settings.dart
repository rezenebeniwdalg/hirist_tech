import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SETTINGS"),
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
                      Icon(Icons.notifications_none_outlined),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Notifications")),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios)
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
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.vpn_key_rounded),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Privacy Settings")),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios)
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
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.manage_accounts),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Account Settings")),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios)
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
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.import_contacts_rounded),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Course Settings")),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios)
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
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.panorama_outlined),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Block Stories")),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios)
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
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.queue_play_next_outlined),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Personalize Jobfeed")),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios)
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
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.sms_failed_sharp),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Feedback")),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios)
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
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.power_settings_new_outlined),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Logout")),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios)
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
        ]),
      ),
    );
  }
}
