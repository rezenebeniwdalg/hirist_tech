import 'package:flutter/material.dart';
import 'package:hirist_tech/globalwidget/LoginCustbutton.dart';
import 'package:hirist_tech/globalwidget/custbutton.dart';
import 'package:hirist_tech/view/LoginScreen.dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 249, 250, 254),
        leading: Image.asset(
          "assets/hirist-tech-logo.png",
          fit: BoxFit.fitWidth,
        ),
        leadingWidth: 106,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Text(
                "browse jobs",
                style: TextStyle(color: Color.fromARGB(255, 245, 88, 45)),
              ))
        ],
      ),
      body: Stack(children: [
        Container(
          height: 1500,
          width: 500,
          // padding: EdgeInsets.only(top: 100),
          // color: Colors.grey,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg.png"), fit: BoxFit.fitHeight)),
        ),
        Container(
          height: 500,
          width: 500,
          // padding: EdgeInsets.only(top: 100),
          // color: Colors.grey,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/LogRegScreen.png"),
                  fit: BoxFit.fitWidth)),
        ),
        Positioned(
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              height: 250,

              // width: 390,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: Text(
                        "Tech it to the next level",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      child: Center(
                        child: Text(
                          " Find your dream job in tech. Get started!  ",
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          child: LoginCustomButton(
                            text: "Login",
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScr()),
                                  (route) => false);
                            },
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: RegisterCustomButton(
                            text: "Register",
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScr()),
                                  (route) => false);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // color: Colors.yellow,
            ),
          ),
        ),
        // Positioned(
        //   top: 30,
        //   child: Container(
        //     decoration: BoxDecoration(
        //         image: DecorationImage(
        //             image: AssetImage("assets/LogRegScreen.png"),
        //             fit: BoxFit.fitWidth)),
        //   ),
        // )
      ]),
    );
  }
}
