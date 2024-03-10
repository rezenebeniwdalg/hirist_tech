// import 'package:flt_21_2_24/view/widgets/custom_chat_card.dart';
import 'package:flutter/material.dart';

class CourseTabCard extends StatelessWidget {
  const CourseTabCard(
      {super.key,
      required this.ProfilePic,
      required this.CourseName,
      required this.Experience,
      required this.Duration,
      required this.Platform});

  final String ProfilePic;
  final String CourseName;
  final String Experience;
  final String Duration;
  final String Platform;
  // final String profilepic;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: 380,
            padding: EdgeInsets.all(5),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        child: Image.network(ProfilePic)),
                    SizedBox(width: 15),
                    Column(
                      children: [
                        Container(
                          width: 290,
                          child: Text(CourseName),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  Experience,
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Divider(
                                color: Colors.black.withOpacity(.4),
                                indent: 10,
                                endIndent: 10,
                              ),
                              Container(
                                child: Text(
                                  Platform,
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: Text(
                                  Duration,
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                // Column(
                //   children: [
                //     Icon(
                //       Icons.bookmark,
                //       color: Color.fromARGB(255, 245, 88, 45),
                //     ),
                //   ],
                // ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
