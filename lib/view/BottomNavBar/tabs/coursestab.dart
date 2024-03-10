import 'package:flutter/material.dart';
import 'package:hirist_tech/hirist_db.dart';
import 'package:hirist_tech/view/BottomNavBar/tabs/coursetabcard.dart';

class CoursesTab extends StatelessWidget {
  const CoursesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black.withOpacity(.1)))),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              child: Text("Courses")),
          Column(
            children: [
              SingleChildScrollView(
                // scrollDirection: Axis.horizontal,
                child: Column(
                  children: List.generate(
                    Hirist_db.Courses.length,
                    (index) => CourseTabCard(
                      ProfilePic: Hirist_db.Courses[index]["ProfilePic"],
                      CourseName: Hirist_db.Courses[index]["CourseName"],
                      Experience: Hirist_db.Courses[index]["experience"],
                      Platform: Hirist_db.Courses[index]["platform"],
                      Duration: Hirist_db.Courses[index]["duration"],

                      // perks: Hirist_db.CompaniesTab[index]["perks"],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
