import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 242, 242, 252),
        centerTitle: true,
        title: Text("NOTIFICATIONS"),
      ),
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(8),
                color: Color.fromARGB(235, 234, 232, 232),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromARGB(215, 107, 181, 241)),
                          height: 40,
                          width: 40,
                          child: Icon(Icons.phone_android_outlined),
                        ),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 330,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Verify your phone number",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 245, 88, 45),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons.timer_outlined),
                                        Text("2days")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // height: 100,
                              width: 330,
                              child: Text(
                                  "Condidates with a verified phone nuber have a 50% higher chance of getting contacted by the recruiter. Click here to verify your number."),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
                padding: EdgeInsets.all(8),
                color: Color.fromARGB(235, 234, 232, 232),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromARGB(215, 107, 181, 241)),
                          height: 40,
                          width: 40,
                          child: Icon(Icons.phone_android_outlined),
                        ),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 330,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Verify your email Address",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 245, 88, 45),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons.timer_outlined),
                                        Text("2days")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // height: 100,
                              width: 330,
                              child: Text(
                                  "Condidates with a verified email id have a higher chance of getting contacted by the recruiter. Click here to verify your email id."),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
