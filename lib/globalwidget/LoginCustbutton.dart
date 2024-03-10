import 'package:flutter/material.dart';
// import 'package:instclone/core/constants/colorconst.dart';

class LoginCustomButton extends StatelessWidget {
  const LoginCustomButton(
      {super.key,
      required this.text,
      this.butcolor = Colors.white,
      this.haveborder = false,
      this.textColor = const Color.fromARGB(255, 245, 88, 45),
      this.onTap,
      this.verticalPadding = 15});
  final String text;
  final Color textColor;
  final Color butcolor;
  final bool haveborder;
  final double verticalPadding;

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 170,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: butcolor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color.fromARGB(255, 245, 88, 45))),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
