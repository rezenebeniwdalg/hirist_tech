// import 'package:flt_21_2_24/view/widgets/custom_chat_card.dart';
import 'package:flutter/material.dart';

class JobsTabCard extends StatelessWidget {
  const JobsTabCard(
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
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 40,
              child: Icon(Icons.business),
              color: Colors.blue,
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Text(Locations)
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
            Text(Date),
            SizedBox(
              height: 7,
            ),
          ],
        )
      ],
    ));
  }
}
