import 'package:flutter/material.dart';

class FeaturedEmployer extends StatelessWidget {
  const FeaturedEmployer({super.key, required this.Logo, required this.Photo});
  final String Logo;
  final String Photo;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(children: [
        Container(
          padding: EdgeInsets.all(8),
          height: 200,
          width: 300,
          child: Image.network(
            Logo,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: EdgeInsets.all(8),
              height: 65,
              width: 65,
              child: Image.network(Photo, fit: BoxFit.fill),
            )),
        Positioned(
            bottom: 25,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(8),
                color: Color.fromARGB(175, 0, 0, 0),
                height: 45,
                width: 100,
                child: Center(
                  child: Text(
                    "See Inside",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ))
      ]),
    );
  }
}
