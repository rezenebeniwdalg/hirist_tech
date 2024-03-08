import 'package:flutter/material.dart';
import 'package:hirist_tech/globalwidget/stories.dart';
import 'package:hirist_tech/globalwidget/storynotify.dart';
import 'package:hirist_tech/hirist_db.dart';

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
          leading: Image.asset(
            "assets/hirist-tech-logo.png",
            fit: BoxFit.fitWidth,
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      "Stories",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                          // count++;
                          // print(count);

                          // BottomSetState() {}
                          // ;
                          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          //   behavior: SnackBarBehavior.floating,
                          //   margin: EdgeInsets.all(10),
                          //   padding: EdgeInsets.all(20),
                          //   duration: Duration(seconds: 20),
                          //   backgroundColor: Colors.red,
                          //   content: SnackBarAction(
                          //     label: "label",
                          //     onPressed: () {},
                          //   ),
                          // ));
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
              BottomAppBar(
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
              Container(
                height: 200,
                width: 200,
                child: TabBarView(children: [
                  Container(
                    color: Colors.yellow,
                  ),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
