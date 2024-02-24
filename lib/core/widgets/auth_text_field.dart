import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spacewise/core/extension/padding.dart';
import 'package:spacewise/core/extension/theme.dart';

class CustomTextField extends StatelessWidget {
  final bool isPass;
  final String hintText;
  final suffixIcon;
  final String labelText;
  const CustomTextField(
      {Key? key,
      this.isPass = false,
      required this.hintText,
      this.suffixIcon,
      required this.labelText})
      : super(key: key);

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
          keyboardType: TextInputType.multiline,
          textInputAction: TextInputAction.next,
          style: const TextStyle(color: Colors.black, fontSize: 20),
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  color: HexColor("#22016d"),
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
              fillColor: HexColor("EBE5F5"),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              filled: true,
              contentPadding: const EdgeInsets.all(15),
              suffixIcon: suffixIcon),
          obscureText: isPass,
        ),
      ],
    );
  }
}
