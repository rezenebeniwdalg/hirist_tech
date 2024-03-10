import 'package:flutter/material.dart';
import 'package:hirist_tech/view/BottomNavBar/tabs/widgets/CompaniesTab/custm_card_companies_data.dart';

class CustomCardBuilderWithTile extends StatelessWidget {
  const CustomCardBuilderWithTile({super.key, required this.itemCount});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.black.withOpacity(.1)))),
      padding: EdgeInsets.only(left: 16, right: 16, top: 13),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(),
                color: Colors.grey),
            child: Image.network(
                "https://asset.brandfetch.io/idnq7H7qT0/idiH8ZIqAO.png?updated=1667576597154"),
          ),
          SizedBox(
            height: 13,
          ),
          Column(
            children:
                List.generate(itemCount, (index) => CustonNotificationCard()),
          )
        ],
      ),
    );
  }
}
