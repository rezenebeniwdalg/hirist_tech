import 'package:flutter/material.dart';

class FeedbackSend extends StatelessWidget {
  const FeedbackSend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SEND FEEDBACK"),
        actions: [Icon(Icons.send_rounded)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text("Write your feedback here"),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              child: TextFormField(
                  decoration: InputDecoration(border: InputBorder.none)),
            ),
            Container(
              child: Text("Attach Screenshots:-"),
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Icon(
                      Icons.add,
                      color: Colors.grey.shade500,
                    ),
                    color: Colors.grey.shade200,
                    height: 100,
                    width: 100,
                    // width: double.infinity,
                  ),
                  Container(
                    child: Icon(
                      Icons.add,
                      color: Colors.grey.shade500,
                    ),
                    color: Colors.grey.shade200,
                    height: 100,
                    width: 100,
                    // width: double.infinity,
                  ),
                  Container(
                    child: Icon(
                      Icons.add,
                      color: Colors.grey.shade500,
                    ),
                    color: Colors.grey.shade200,
                    height: 100,
                    width: 100,
                    // width: double.infinity,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
