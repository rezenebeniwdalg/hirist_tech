import 'package:flutter/material.dart';
import 'package:hirist_tech/hirist_db.dart';
import 'package:hirist_tech/view/BottomNavBar/tabs/jobstabcard.dart';
import 'package:hirist_tech/view/BottomNavBar/tabs/jobstabpremiumcard.dart';
import 'package:hirist_tech/view/BottomNavBar/tabs/widgets/CompaniesTab/CompaniesTabcard.dart';

class JobsTab extends StatelessWidget {
  const JobsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              // decoration: BoxDecoration(
              //     border: Border(
              //         bottom: BorderSide(color: Colors.black.withOpacity(.1)))),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Premium Jobs for you"),
                  Text(
                    "See All",
                    textAlign: TextAlign.right,
                  ),
                ],
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                Hirist_db.MoreJobs.length,
                (index) => JobsTabPremiumCard(
                  Position: Hirist_db.MoreJobs[index]["position"],
                  Position2: Hirist_db.MoreJobs[index]["position2"],
                  Experience: Hirist_db.MoreJobs[index]["experience"],
                  Locations: Hirist_db.MoreJobs[index]["location"],
                  Date: Hirist_db.MoreJobs[index]["date"],

                  // perks: Hirist_db.CompaniesTab[index]["perks"],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text("More Jobs for you"),
          SingleChildScrollView(
            child: Column(
              children: List.generate(
                Hirist_db.MoreJobs.length,
                (index) => JobsTabCard(
                  Position: Hirist_db.MoreJobs[index]["position"],
                  Position2: Hirist_db.MoreJobs[index]["position2"],
                  Experience: Hirist_db.MoreJobs[index]["experience"],
                  Locations: Hirist_db.MoreJobs[index]["location"],
                  Date: Hirist_db.MoreJobs[index]["date"],

                  // perks: Hirist_db.CompaniesTab[index]["perks"],
                ),
              ),
            ),
          ),
          // Column(
          //   children: List.generate(
          //     10,
          //     (index) => CustomCardBuilderWithTile(
          //       itemCount: index + 1,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
