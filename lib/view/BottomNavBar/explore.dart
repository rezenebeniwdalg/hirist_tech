import 'package:flutter/material.dart';

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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("Featured Employers"),
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
                      Text("Top Employers"),
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
