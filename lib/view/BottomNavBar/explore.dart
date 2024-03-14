import 'package:flutter/material.dart';
import 'package:hirist_tech/hirist_db.dart';
import 'package:hirist_tech/view/BottomNavBar/featuredemployers.dart';
import 'package:hirist_tech/view/BottomNavBar/topemployer.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 80,
                color: Color.fromARGB(255, 242, 242, 252),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Search Jobs",
                                  prefixIconConstraints: BoxConstraints(
                                    minWidth: 50,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 20,
                                  ),
                                  isDense: true,
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  // decoration: BoxDecoration(
                  //     border: Border(
                  //         bottom: BorderSide(color: Colors.black.withOpacity(.1)))),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text("Explore job Categories"),
                          Text(
                            "See All",
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 300,
                        width: double.infinity,
                        child: Row(children: []),
                      )
                    ],
                  )),
              SizedBox(
                height: 1,
              ),
              Container(
                  width: double.infinity,
                  // decoration: BoxDecoration(
                  //     border: Border(
                  //         bottom: BorderSide(color: Colors.black.withOpacity(.1)))),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("Featured Employers"),
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              Hirist_db.FeaturedEmployers.length,
                              (index) => FeaturedEmployer(
                                Logo: Hirist_db.FeaturedEmployers[index]
                                    ["logo"],
                                Photo: Hirist_db.FeaturedEmployers[index]
                                    ["photo"],

                                // perks: Hirist_db.CompaniesTab[index]["perks"],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Color.fromARGB(255, 242, 242, 252),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Top Employers",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: List.generate(
                                        Hirist_db.TopEmployers.length,
                                        (index) => TopEmployer(
                                              Profile:
                                                  Hirist_db.TopEmployers[index]
                                                      ["profile"],
                                            )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("Trending Courses"),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
