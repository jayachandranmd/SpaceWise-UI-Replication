import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spacewise/core/extension/theme.dart';
import 'package:spacewise/core/widgets/custom_navbar.dart';

class SuccessScreen extends StatefulWidget {
  final String successText;
  const SuccessScreen({super.key, required this.successText});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const CustomNavbar()),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            "assets/success_animation.json",
            repeat: false,
          ),
          Text(
            widget.successText,
            style: context.textTheme.headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
