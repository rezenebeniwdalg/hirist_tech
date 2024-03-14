import 'package:flutter/material.dart';
import 'package:hirist_tech/hirist_db.dart';

class CompaniesTabCard extends StatelessWidget {
  const CompaniesTabCard({
    super.key,
    required this.ProfilePic,
    required this.CompanyName,
    required this.Locations,
    required this.Description,
    /*required this.perks*/
  });
  final String ProfilePic;
  final String CompanyName;
  final String Locations;
  final String Description;
  // final List<IconData> perks;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Container(
        child: Row(
          children: [
            Container(
              child: Container(
                width: 50,
                child: Image.network(ProfilePic),
              ),
              // Image.network(ProfilePic),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Title(
                    color: Colors.black,
                    child: Text(
                      CompanyName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),

                Container(child: Text(Locations)),
                Container(
                  child: Text(Description),
                ),
                Divider(
                  color: Colors.red,
                  thickness: 1,
                  height: 10,
                ),
                Container(child: Text("Perks & Benefits")),
                Row(
                  children: [
                    CircleAvatar(
                      // child: Icon(Icons.shield),
                      radius: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Column(
                //     children: List.generate(
                //       Hirist_db.CompaniesTab.length,
                //       (index) => CompanyPerks(
                //         perks: Hirist_db.CompaniesTab[index]["perks"],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
