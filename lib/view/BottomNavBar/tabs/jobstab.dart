import 'package:flutter/material.dart';

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
          Container(
            height: 150,
            width: 400,
            color: Colors.blue,
          ),
          Text("More Jobs for you"),
          Container(
            height: 150,
            width: 400,
            color: Colors.blue,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            width: 400,
            color: Colors.blue,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            width: 400,
            color: Colors.blue,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            width: 400,
            color: Colors.blue,
          ),
          SizedBox(
            height: 20,
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
