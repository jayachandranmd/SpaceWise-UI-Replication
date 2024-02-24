import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spacewise/core/extension/padding.dart';
import 'package:spacewise/core/extension/theme.dart';

class SpaceListingCard extends StatelessWidget {
  final String priceText;
  final String spaceType;
  final String spaceSize;
  final String imageUrl;
  const SpaceListingCard({
    super.key,
    required this.priceText,
    required this.spaceType,
    required this.spaceSize,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: HexColor("EBE5F5"),
          border: Border.all(color: HexColor("#22016d"))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              priceText,
              style: context.textTheme.bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(spaceType,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: HexColor("#22016d"))),
            Text(
              spaceSize,
              style: context.textTheme.bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Book Now",
                )).vPad(10)
          ]),
          Image.asset(
            imageUrl,
            height: 110,
          )
        ],
      ),
    );
  }
}
