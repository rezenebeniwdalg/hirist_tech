import 'package:flutter/material.dart';

class TopEmployer extends StatelessWidget {
  const TopEmployer({super.key, required this.Profile});
  final String Profile;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(8),
        height: 80,
        width: 80,
        child: Image.network(
          Profile,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
