import 'package:flutter/material.dart';
import 'package:hirist_tech/globalwidget/LogCustbutton.dart';

class StoryNotify extends StatelessWidget {
  const StoryNotify({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Image.asset("assets/stories_hirist.png"),
          ),
          Container(
            child: Text(
              "Introducing Company Stories!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "Check out this space to see real-time updates about a company. Know more  about their culture, their new initiatives, and hear the stories of their employees!",
              textAlign: TextAlign.center,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(12),
                child: CustomButton(text: "Got it")),
          ),
        ],
      ),
    );
  }
}
