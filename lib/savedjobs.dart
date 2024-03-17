import 'package:flutter/material.dart';
import 'package:hirist_tech/hirist_db.dart';
import 'package:hirist_tech/view/BottomNavBar/tabs/jobstabcard.dart';

class SavedJobs extends StatelessWidget {
  const SavedJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 242, 242, 252),
        centerTitle: true,
        title: Text("SAVED JOBS"),
      ),
      body: SingleChildScrollView(
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
    );
  }
}
