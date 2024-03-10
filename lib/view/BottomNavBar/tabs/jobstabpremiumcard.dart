// import 'package:flt_21_2_24/view/widgets/custom_chat_card.dart';
import 'package:flutter/material.dart';

class JobsTabPremiumCard extends StatelessWidget {
  const JobsTabPremiumCard(
      {super.key,
      required this.Position,
      required this.Position2,
      required this.Experience,
      required this.Date,
      required this.Locations});

  final String Position;
  final String Position2;
  final String Experience;
  final String Date;
  final String Locations;
  // final String profilepic;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.business,
                      color: Colors.purple,
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Text(Position),
                      Text(Position2),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(Experience),
                            SizedBox(
                              width: 10,
                            ),
                            Divider(
                              color: Colors.black.withOpacity(.4),
                              indent: 10,
                              endIndent: 10,
                            ),
                            Text(Locations),
                            SizedBox(
                              width: 20,
                            ),
                            Text(Date),
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
              Column(
                children: [
                  Icon(
                    Icons.bookmark,
                    color: Color.fromARGB(255, 245, 88, 45),
                  ),
                ],
              ),
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
    );
  }
}
