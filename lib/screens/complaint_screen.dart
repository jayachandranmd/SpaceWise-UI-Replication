import 'package:flutter/material.dart';
import 'package:spacewise/core/extension/padding.dart';
import 'package:spacewise/core/extension/theme.dart';
import 'package:spacewise/core/widgets/auth_text_field.dart';
import 'package:spacewise/core/widgets/custom_button.dart';
import 'package:spacewise/core/widgets/success_screen.dart';

class ComplaintScreen extends StatelessWidget {
  const ComplaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            "Register a complaint",
            style: context.textTheme.headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(children: [
          const CustomTextField(
              hintText: "Name of the space with issue",
              labelText: "Space Name"),
          const CustomTextField(
              hintText: "What is the complaint?", labelText: "Complaint"),
          const Spacer(),
          CustomButton(
              buttonContent: const Text("Submit",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SuccessScreen(
                              successText: "Submitted Successfully!",
                            )),
                    (route) => false);
              })
        ]).pad(20));
  }
}
