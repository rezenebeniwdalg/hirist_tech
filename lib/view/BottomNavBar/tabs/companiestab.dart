import 'package:flutter/material.dart';
import 'package:hirist_tech/view/BottomNavBar/tabs/widgets/custom_card_companies.dart';

class CompaniesTab extends StatelessWidget {
  const CompaniesTab({super.key});

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
              child: Text("Companies")),
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
