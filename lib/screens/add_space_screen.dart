import 'package:flutter/material.dart';
import 'package:spacewise/core/extension/padding.dart';
import 'package:spacewise/core/extension/theme.dart';
import 'package:spacewise/core/widgets/custom_button.dart';
import 'package:spacewise/core/widgets/register_text_field.dart';
import 'package:spacewise/core/widgets/success_screen.dart';

class AddSpaceScreen extends StatelessWidget {
  const AddSpaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text(
          "Add Space",
          style: context.textTheme.headlineSmall!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const RegisterTextField(hintText: "Name", labelText: "Space Name"),
        const RegisterTextField(
            hintText: "Space Description", labelText: "Description"),
        Text(
          "Images",
          style: context.textTheme.titleMedium!.copyWith(color: Colors.black),
        ).vPad(5),
        Image.asset("assets/hallway.png").vPad(5),
        const RegisterTextField(hintText: "Space Size", labelText: "Size"),
        const RegisterTextField(
            hintText: "Price description", labelText: "Price"),
        CustomButton(
            buttonContent: const Text(
              "Add Space",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SuccessScreen(
                            successText: "Added a space successfully!",
                          )),
                  (route) => false);
            }).vPad(30)
      ])).pad(20),
    ));
  }
}
