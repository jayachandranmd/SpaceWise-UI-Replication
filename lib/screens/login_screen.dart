import 'package:flutter/material.dart';
import 'package:spacewise/core/extension/padding.dart';
import 'package:spacewise/core/extension/theme.dart';
import 'package:spacewise/core/widgets/custom_button.dart';
import 'package:spacewise/core/widgets/auth_text_field.dart';
import 'package:spacewise/core/widgets/custom_navbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/logo.png",
                  height: 100,
                ),
              ),
              Center(
                child: Text(
                  "Login",
                  style: context.textTheme.titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ).vPad(20),
              ),
              const CustomTextField(
                labelText: "Email",
                hintText: "someone@gmail.com",
              ).vPad(20),
              CustomTextField(
                labelText: "Password",
                hintText: "********",
                isPass: _isObscure,
                suffixIcon: IconButton(
                  color: Colors.blueGrey,
                  icon: Icon(
                    !_isObscure
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Colors.blueGrey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
              const Text(
                "Forgot Password?",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blueGrey),
              ).vPad(10),
              CustomButton(
                buttonContent: const Text(
                  "Log In",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomNavbar()));
                },
              ).vPad(30)
            ],
          ).pad(20),
        ),
      ),
    );
  }
}
