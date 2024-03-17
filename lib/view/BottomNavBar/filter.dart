import 'package:flutter/material.dart';
import 'package:hirist_tech/globalwidget/LogCustbutton.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("FILTER"),
                Text("Clear all"),
              ],
            ),
          ),
          Container(
            color: Colors.grey.shade200,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.grey.shade200,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "LOCATION",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "EXPERIENCE",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "SORT",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        height: 360,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 20,
                                        bottom: 20),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: "Search by Location",
                                                prefixIconConstraints:
                                                    BoxConstraints(
                                                  minWidth: 50,
                                                ),
                                                prefixIcon: Icon(
                                                  Icons.search,
                                                  size: 20,
                                                ),
                                                isDense: true,
                                                fillColor: Colors.grey.shade300,
                                                filled: true,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 15,
                                                        vertical: 5),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                    borderSide:
                                                        BorderSide.none)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(8),
                          child: CustomButton(text: "Apply")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
