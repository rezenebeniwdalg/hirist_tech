import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories(
      {super.key,
      required this.profile,
      required this.organization,
      this.ispremium = false});
  final String profile;
  final String organization;
  final bool ispremium;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              padding: EdgeInsets.all(3),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      end: Alignment.topRight,
                      colors: [Colors.red, Colors.orange, Colors.yellow])),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 240, 240),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(profile),
                ),
              ),
            ),
            Positioned(
              right: -22,
              bottom: 10,
              child: ispremium == true
                  ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 88, 45),
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(6),
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      child: Center(
                          child: Icon(
                        Icons.star,
                        color: Colors.white,
                      )),
                    )
                  : SizedBox(),
            )
          ],
        ),
        SizedBox(
          height: 3,
        ),
        Text(organization),
      ]),
    );
  }
}
