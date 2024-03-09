import 'package:flutter/material.dart';

class JobsTab extends StatelessWidget {
  const JobsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: [
            Container(
              color: Colors.yellow,
              child: Text("Companies"),
            ),

            //companies details--------------------------------------------------------------------

            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Image.network(
                        "https://asset.brandfetch.io/idnq7H7qT0/idiH8ZIqAO.png?updated=1667576597154"),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Text(
                            "ola cabs",
                          ),
                        ),
                        Container(
                          child: Text("multiple locations"),
                        ),
                        Container(
                          child: Text("founded"),
                        ),
                        Container(
                          child: Text("Perks & Benefits"),
                        ),
                        Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
      color: Colors.red,
    );
  }
}
