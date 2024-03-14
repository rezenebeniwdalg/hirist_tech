import 'package:flutter/material.dart';
import 'package:hirist_tech/view/BottomNavBar/tabs/widgets/settings/settings.dart';
import 'package:hirist_tech/view/log_reg_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                color: Color.fromARGB(255, 242, 242, 252),
                padding: EdgeInsets.only(top: 30, bottom: 30, left: 20),
                child: Column(
                  children: [
                    Text("PROFILE"),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            size: 60,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Ebenezer Gladwin",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Container(
                              child: Text(
                                "0 Follow-ups Remaining",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 245, 88, 45),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                width: 400,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 400,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 3, 23, 58),
                          ),
                          height: 100,
                          width: 100,
                          child: Container(
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.workspace_premium,
                                            color: Colors.amber,
                                          ),
                                          Text(
                                            "Go Premium",
                                            style:
                                                TextStyle(color: Colors.amber),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30),
                                        width: 300,
                                        child: Text(
                                            "Advance in your career with our Premium Services",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 245, 88, 45),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      "VIEW",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          "EXPLORE PROFILE",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.person),
                                        Text("Profile"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                // width: 400,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.check_circle_outline),
                                        Text("Applied Jobs"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 400,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.download_outlined),
                                        Text("Saved Jobs"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 400,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.sync),
                                        Text("My Interviews"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 400,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.chat_outlined),
                                        Text("My Chat"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 400,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.rss_feed_outlined),
                                        Text("Personalize Jobfeed"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 400,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.school_outlined),
                                        Text("Learning Center"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Color.fromARGB(
                                                255, 76, 232, 82),
                                          ),
                                          padding: EdgeInsets.all(4),
                                          child: Text(
                                            "NEW",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        )
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Divider(
                        color: Color.fromARGB(255, 225, 225, 225),
                        thickness: 1,
                        height: 10,
                        indent: 2,
                        endIndent: 2,
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Container(
                        width: 400,
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Settings()));
                              },
                              child: Container(
                                width: 400,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.settings_outlined),
                                        Text("Settings"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 400,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star_outline_rounded),
                                        Text("Rate Us"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 400,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.feedback_outlined),
                                        Text("Feedback"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginRegister()),
                              (route) => false);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Color.fromARGB(255, 242, 242, 252),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 5),
                            child: Text(
                              "Log Out",
                              style: TextStyle(
                                color: Color.fromARGB(255, 245, 88, 45),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          "Version: 2.63",
                          style: TextStyle(color: Colors.black38),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
