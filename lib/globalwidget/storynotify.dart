import 'package:flutter/material.dart';

class StoryNotify extends StatelessWidget {
  const StoryNotify({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: Text(
            "Introducing Company Stories!",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          child: Text(
              "Check out this space to see real-time updates about a company. Know more  about their culture, their new initiatives, and hear the stories of their employees!"),
        ),
      ],
    );
  }
}
