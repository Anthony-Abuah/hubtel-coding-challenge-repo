import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/utils/app_widget_helper.dart';

import '../../utils/app_colors.dart';



class DateCard extends StatelessWidget {
  final String date;
  const DateCard({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
          color: AppColors.greyBackground,
          borderRadius: const BorderRadius.horizontal(left: Radius.circular(12), right: Radius.circular(12))
      ),
      child: Text(date, style: AppTextStyles.dateTextStyle()),
    );
  }
}