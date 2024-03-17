import 'package:flutter/material.dart';

class SettingsNotification extends StatelessWidget {
  const SettingsNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("NOTIFICATION SETTINGS"),
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
                      Icon(Icons.rss_feed),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Daily New Jobs")),
                    ],
                  ),
                  Icon(Icons.check_box)
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
                      Icon(Icons.check_box_outlined),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Applied Jobs")),
                    ],
                  ),
                  Icon(Icons.check_box)
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
                      Icon(Icons.lightbulb_outline_rounded),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Recruiter Actions")),
                    ],
                  ),
                  Icon(Icons.check_box)
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
                          child: Text("Educational-Learn Grow")),
                    ],
                  ),
                  Icon(Icons.check_box)
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
                      Icon(Icons.volume_up),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Promotional")),
                    ],
                  ),
                  Icon(Icons.check_box)
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
                      Icon(Icons.thumb_up),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Follow up")),
                    ],
                  ),
                  Icon(Icons.check_box)
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
                      Icon(Icons.speaker_notes),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Chat Notifications")),
                    ],
                  ),
                  Icon(Icons.check_box)
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
                      Icon(Icons.recent_actors_outlined),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Text("Attach CoverLetter")),
                    ],
                  ),
                  Icon(Icons.check_box)
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
