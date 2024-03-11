import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 242, 242, 252),
            padding: EdgeInsets.only(top: 40, bottom: 30, left: 20),
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
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 3, 23, 58),
                    ),
                    height: 100,
                    width: 100,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.workspace_premium,
                                  color: Colors.amber,
                                ),
                                Text(
                                  "Go Premium",
                                  style: TextStyle(color: Colors.amber),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 245, 88, 45),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "view",
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
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Profile"),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Applied Jobs"),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Saved Jobs"),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("My Interviews"),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("My Chat"),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Personalize JobFeed"),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Learning Center"),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 400,
                  child: Column(),
                ),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
