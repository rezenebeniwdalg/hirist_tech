import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hirist_tech/globalwidget/LogCustbutton.dart';
import 'package:hirist_tech/globalwidget/LoginCustbutton.dart';
import 'package:hirist_tech/globalwidget/custbutton.dart';
import 'package:hirist_tech/view/BottomNavBar/BottomNavBar.dart';

class LoginScr extends StatefulWidget {
  const LoginScr({super.key});
  @override
  State<LoginScr> createState() => _LoginScrState();
}

class _LoginScrState extends State<LoginScr> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 249, 250, 254),
          leading: Image.asset(
            "assets/hirist-tech-logo.png",
            fit: BoxFit.fitWidth,
          ),
          leadingWidth: 106,
          actions: [
            // Padding(padding: EdgeInsets.only(right: 100)),
            Container(
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                    blurRadius: 6, color: Colors.grey.shade400, spreadRadius: 1)
              ]),
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: Icon(Icons.close),
              ),
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 249, 250, 254),
          ),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 370,
                    child: Text(
                      "Welcome back!",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 370,
                        child: Text(
                          "Sign in to your account and continue your",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Container(
                        width: 370,
                        child: Text(
                          "job search",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 49,
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.grey),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(.1))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(.4)),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    controller: passController,
                    onTapOutside: (event) {
                      FocusScope.of(context).unfocus();
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.grey),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(.1))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(.4)),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                    onChanged: (value) {
                      print(value);
                      setState(() {});
                    },
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password?",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomButton(
                    butcolor: nameController.text.isNotEmpty &&
                            passController.text.isNotEmpty
                        ? Color.fromARGB(255, 245, 88, 45)
                        : Color.fromARGB(255, 245, 88, 45).withOpacity(.4),
                    text: "Log in ",
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavBarScreen()),
                          (route) => false);
                    },
                  ),
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    // decoration: BoxDecoration(
                    //     border: Border(top: BorderSide(width: .1))),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "dont have an acount?",
                        style: TextStyle(
                            fontSize: 16, color: Colors.black.withOpacity(.6)),
                        children: [
                          TextSpan(
                              text: "Sign Up",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 245, 88, 45)))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
