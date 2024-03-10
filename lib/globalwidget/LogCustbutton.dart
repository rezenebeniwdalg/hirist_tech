import 'package:flutter/material.dart';
// import 'package:instclone/core/constants/colorconst.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.butcolor = const Color.fromARGB(255, 248, 94, 47),
      this.haveborder = false,
      this.textColor = Colors.white,
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
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: butcolor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Color.fromARGB(255, 248, 94, 47),
            )),
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
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
