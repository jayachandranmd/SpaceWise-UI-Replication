import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomButton extends StatelessWidget {
  final Widget buttonContent;
  final void Function()? onPressed;
  const CustomButton(
      {super.key, required this.buttonContent, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(HexColor("#22016d")),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.all(15)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ))),
          onPressed: onPressed,
          child: buttonContent),
    );
  }
}
