import 'package:flutter/material.dart';

class CoursesTab extends StatelessWidget {
  const CoursesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black.withOpacity(.1)))),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              child: Text("Courses")),
          Column(
            children: [
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
              Container(
                height: 150,
                width: 400,
                color: Colors.blue,
              ),
              SizedBox(
                height: 20,
              ),
            ],
            // children: List.generate(
            //   10,
            //   (index) => CustomCardBuilderWithTile(
            //     itemCount: index + 1,
            //   ),
            // ),
          )
        ],
      ),
    );
  }
}
