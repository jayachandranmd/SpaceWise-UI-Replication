import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spacewise/core/extension/padding.dart';
import 'package:spacewise/core/extension/theme.dart';
import 'package:spacewise/core/widgets/responsive_form_wrapper.dart';
import 'package:spacewise/core/widgets/space_listing_card.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  List<DateTime?> _singleDatePickerValueWithDefaultValue = [
    DateTime.now(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Book a space",
          style: context.textTheme.headlineSmall!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: ResponsiveFormWrapper(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Select a date", style: context.textTheme.headlineSmall),
            _buildDefaultSingleDatePickerWithValue(),
            const SpaceListingCard(
              priceText: "Price: ₹3000",
              spaceType: "Small Shop",
              spaceSize: "Seatings: 50",
              imageUrl: "assets/shop.png",
            ).vPad(20),
            const SpaceListingCard(
              priceText: "Price: ₹4000",
              spaceType: "Atrium",
              spaceSize: "Seatings: 100",
              imageUrl: "assets/atrium.png",
            )
          ],
        ).pad(20),
      ),
    );
  }

  String _getValueText(
    CalendarDatePicker2Type datePickerType,
    List<DateTime?> values,
  ) {
    values =
        values.map((e) => e != null ? DateUtils.dateOnly(e) : null).toList();

    var valueText = DateFormat.MMMMEEEEd().format(values[0]!);

    return valueText;
  }

  Widget _buildDefaultSingleDatePickerWithValue() {
    final config = CalendarDatePicker2Config(
      selectedDayHighlightColor: HexColor("EBE5F5"),
      weekdayLabels: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
      selectedDayTextStyle:
          const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      weekdayLabelTextStyle: TextStyle(
        color: HexColor("61479E"),
        fontWeight: FontWeight.bold,
      ),
      firstDayOfWeek: 1,
      controlsHeight: 50,
      controlsTextStyle: TextStyle(
        color: HexColor("61479E"),
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      dayTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      selectedYearTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      disabledDayTextStyle: const TextStyle(
        color: Colors.grey,
      ),
      selectableDayPredicate: (day) => !day
          .difference(DateTime.now().subtract(const Duration(days: 1)))
          .isNegative,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CalendarDatePicker2(
          config: config,
          value: _singleDatePickerValueWithDefaultValue,
          onValueChanged: (dates) =>
              setState(() => _singleDatePickerValueWithDefaultValue = dates),
        ),
        const SizedBox(height: 10),
        Text("Available spaces for",
            style: context.textTheme.headlineSmall!
                .copyWith(fontWeight: FontWeight.bold)),
        Text(
          style: context.textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: HexColor("61479E"),
          ),
          _getValueText(
            config.calendarType,
            _singleDatePickerValueWithDefaultValue,
          ),
        ),
      ],
    );
  }
}
