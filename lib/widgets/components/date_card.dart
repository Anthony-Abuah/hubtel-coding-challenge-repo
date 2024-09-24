


import 'package:flutter/material.dart';

import '../../helper/app_widget_helper.dart';

class DateCard extends StatelessWidget {
  final String date;
  const DateCard({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: const BoxDecoration(
          color: Color.fromRGBO(220, 220, 220, 1),
          borderRadius: BorderRadius.horizontal(left: Radius.circular(16), right: Radius.circular(16))
      ),
      child: Text(date, style: AppWidget.dateTextStyle(),),
    );
  }
}