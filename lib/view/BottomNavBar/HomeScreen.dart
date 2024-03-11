import 'package:flutter/material.dart';
import 'package:hirist_tech/globalwidget/stories.dart';
import 'package:hirist_tech/globalwidget/storynotify.dart';
import 'package:hirist_tech/hirist_db.dart';
import 'package:hirist_tech/view/BottomNavBar/filter.dart';

import 'package:hirist_tech/view/BottomNavBar/tabs/coursestab.dart';
import 'package:hirist_tech/view/BottomNavBar/tabs/jobstab.dart';
import 'package:hirist_tech/view/BottomNavBar/tabs/widgets/CompaniesTab/companiestab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int count = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 242, 242, 252),
          leading: Transform.translate(
            offset: Offset(15, 0),
            child: Image.asset(
              "assets/hirist-tech-logo.png",
              fit: BoxFit.fitWidth,
            ),
          ),
          leadingWidth: 106,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_outlined,
                  color: Color.fromARGB(255, 245, 88, 45),
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        "Stories",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) => Container(
                                width: double.infinity,
                                child: StoryNotify(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.info_outline,
                            color: Color.fromARGB(255, 245, 88, 45),
                          ))
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      Hirist_db.Storieslist.length,
                      (index) => Stories(
                        profile: Hirist_db.Storieslist[index]["profile"],
                        organization: Hirist_db.Storieslist[index]
                            ["organization"],
                        ispremium: Hirist_db.Storieslist[index]["status"],
                      ),
                    ),
                  ),
                ),
                Material(
                  child: BottomAppBar(
                    child: TabBar(
                        dividerHeight: 0,
                        labelColor: Color.fromARGB(255, 245, 88, 45),
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Color.fromARGB(255, 245, 88, 45),
                        indicatorWeight: 3,
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: [
                          Tab(
                            child: Text(
                              "JOBS",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "COMPANIES",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "COURSES",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ]),
                  ),
                ),
                Stack(children: [
                  Container(
                    height: 450,
                    width: 400,
                    child: TabBarView(
                        children: [JobsTab(), CompaniesTab(), CoursesTab()]),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 140,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => Container(
                              width: double.infinity,
                              child: Filter(),
                            ),
                          );
                        },
                        child: Container(
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              height: 40,
                              width: 70,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.tune_rounded),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Filter"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
