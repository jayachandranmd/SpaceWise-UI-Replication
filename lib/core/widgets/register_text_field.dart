import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spacewise/core/extension/padding.dart';
import 'package:spacewise/core/extension/theme.dart';

class RegisterTextField extends StatelessWidget {
  final String hintText;
  final suffixIcon;
  final String labelText;
  final bool isSuffixed = false;

  const RegisterTextField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          labelText,
          style: context.textTheme.titleMedium!.copyWith(color: Colors.black),
        ).vPad(5),
        TextFormField(
          textInputAction: TextInputAction.next,
          style: const TextStyle(color: Colors.black, fontSize: 20),
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  color: HexColor("61479E"),
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.blueGrey)),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(15),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.blueGrey)),
              filled: true,
              contentPadding: const EdgeInsets.all(15),
              suffixIcon: isSuffixed ? suffixIcon : null),
        ),
      ],
    );
  }
}
