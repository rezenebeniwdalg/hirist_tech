import 'package:flutter/material.dart';
import 'package:hirist_tech/globalwidget/stories.dart';
import 'package:hirist_tech/hirist_db.dart';
import 'package:hirist_tech/view/BottomNavBar/tabs/widgets/CompaniesTabcard.dart';
import 'package:hirist_tech/view/BottomNavBar/tabs/widgets/custom_card_companies.dart';

class CompaniesTab extends StatelessWidget {
  const CompaniesTab({super.key});

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
              child: Text("Companies")),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: List.generate(
                Hirist_db.CompaniesTab.length,
                (index) => CompaniesTabCard(
                  ProfilePic: Hirist_db.CompaniesTab[index]["ProfilePic"],
                  CompanyName: Hirist_db.CompaniesTab[index]["CompanyName"],
                  Locations: Hirist_db.CompaniesTab[index]["Locations"],
                  Description: Hirist_db.CompaniesTab[index]["description"],
                  // perks: Hirist_db.CompaniesTab[index]["perks"],
                ),
              ),
            ),
          ),
          // Column(
          //   children: [
          //     Container(
          //       height: 150,
          //       width: 400,
          //       color: Colors.blue,
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     Container(
          //       height: 150,
          //       width: 400,
          //       color: Colors.blue,
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     Container(
          //       height: 150,
          //       width: 400,
          //       color: Colors.blue,
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     Container(
          //       height: 150,
          //       width: 400,
          //       color: Colors.blue,
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     Container(
          //       height: 150,
          //       width: 400,
          //       color: Colors.blue,
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //   ],
          //
          // )
        ],
      ),
    );
  }
}
