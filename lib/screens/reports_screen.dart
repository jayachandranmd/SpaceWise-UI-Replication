import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spacewise/core/extension/padding.dart';
import 'package:spacewise/core/extension/theme.dart';

class ReportsScren extends StatefulWidget {
  const ReportsScren({super.key});

  @override
  State<ReportsScren> createState() => _ReportsScrenState();
}

class _ReportsScrenState extends State<ReportsScren> {
  bool filter1 = true;
  bool filter2 = false;
  bool filter3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Generate Report",
          style: context.textTheme.headlineSmall!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Filters",
              style: context.textTheme.headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold)),
          Row(
            children: [
              ChoiceChip(
                  backgroundColor: HexColor("EBE5F5"),
                  disabledColor: HexColor("EBE5F5"),
                  selected: filter1,
                  label: Text(
                    "Shops",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: HexColor("#22016d")),
                  ),
                  onSelected: (value) {
                    setState(() {
                      filter1 = !filter1;
                    });
                  }),
              ChoiceChip(
                  backgroundColor: HexColor("EBE5F5"),
                  disabledColor: HexColor("EBE5F5"),
                  selected: filter2,
                  label: Text(
                    "Atrium",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: HexColor("#22016d")),
                  ),
                  onSelected: (value) {
                    setState(() {
                      filter2 = !filter2;
                    });
                  }).hPad(10),
              ChoiceChip(
                  backgroundColor: HexColor("EBE5F5"),
                  disabledColor: HexColor("EBE5F5"),
                  selected: filter3,
                  label: Text(
                    "Theater",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: HexColor("#22016d")),
                  ),
                  onSelected: (value) {
                    setState(() {
                      filter3 = !filter3;
                    });
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date Range",
                style: context.textTheme.headlineSmall,
              ),
              const Icon(Icons.calendar_month)
            ],
          ).vPad(10),
          Text(
            "Jan ,2023 - Jan 30, 2023",
            style: context.textTheme.bodyLarge!
                .copyWith(color: HexColor("#22016d")),
          ),
          Text("Total Revenue", style: context.textTheme.headlineSmall)
              .vPad(10),
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
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Export Report",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ))
        ],
      ).pad(20),
    );
  }
}
