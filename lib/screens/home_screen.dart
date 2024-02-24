import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spacewise/core/extension/padding.dart';
import 'package:spacewise/core/extension/theme.dart';
import 'package:spacewise/core/widgets/custom_button.dart';
import 'package:spacewise/core/widgets/responsive_form_wrapper.dart';
import 'package:spacewise/screens/add_space_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            titleSpacing: 20,
            leading: Image.asset(
              "assets/logo.png",
            ).padOnly(left: 20),
            title: Text(
              "Dashboard",
              style: context.textTheme.headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            actions: [
              const Icon(
                Icons.notifications,
                size: 30,
              ).padOnly(right: 20),
            ],
          ),
          body: ResponsiveFormWrapper(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Revenue", style: context.textTheme.headlineSmall).vPad(10),
              Text(
                "₹13,598",
                style: context.textTheme.headlineMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Last 30 days",
                    style: context.textTheme.bodyLarge!
                        .copyWith(color: HexColor("#22016d"))),
                TextSpan(
                    text: "  +24%",
                    style: context.textTheme.bodyLarge!.copyWith(
                        color: Colors.green, fontWeight: FontWeight.bold)),
              ])).vPad(10),
              Image.asset("assets/chart.png"),
              Container(
                height: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: HexColor("EBE5F5")),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Spaces",
                              style: context.textTheme.bodyLarge!
                                  .copyWith(fontSize: 18)),
                          Text(
                            "240",
                            style: context.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ).hPad(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Occupied Spaces",
                              style: context.textTheme.bodyLarge!
                                  .copyWith(fontSize: 18)),
                          Text(
                            "130",
                            style: context.textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ).hPad(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Vacant Spaces",
                            style: context.textTheme.headlineSmall!
                                .copyWith(fontSize: 18),
                          ),
                          Text(
                            "110",
                            style: context.textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ).hPad(30)
                    ]),
              ).vPad(20),
              const Spacer(),
              CustomButton(
                buttonContent: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add,
                      color: Colors.white,
                    ).hPad(10),
                    const Text(
                      "Register a space",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddSpaceScreen()));
                },
              ).vPad(20)
            ]).pad(20),
          )),
    );
  }
}
