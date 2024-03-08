import 'package:flutter/material.dart';
import 'package:hirist_tech/core/img_const.dart';
import 'package:hirist_tech/view/log_reg_page.dart';

class SplashScr extends StatefulWidget {
  const SplashScr({super.key});

  @override
  State<SplashScr> createState() => _SplashScrState();
}

class _SplashScrState extends State<SplashScr> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginRegister()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Image.asset(
          ImageConst.appIcon,
          scale: 2.5,
        ),
      )),
    );
  }
}
