import 'package:flutter/material.dart';

class MyChat extends StatelessWidget {
  const MyChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Chat"),
        actions: [Icon(Icons.search), Icon(Icons.more_vert_outlined)],
      ),
    );
  }
}
