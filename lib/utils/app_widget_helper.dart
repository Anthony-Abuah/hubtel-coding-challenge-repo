import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles{
  static TextStyle selectedTabBar() {
    return const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontSize: 14,
    );
  }

  static TextStyle unSelectedTabBar() {
    return TextStyle(
      color: Colors.black.withOpacity(0.20),
      fontWeight: FontWeight.normal,
      fontSize: 14,
    );
  }

  static TextStyle searchLabelStyle() {
    return const TextStyle(
        color: Colors.black38, fontWeight: FontWeight.normal, fontSize: 16);
  }

  static TextStyle transactionTime() {
    return const TextStyle(
        color: Color.fromRGBO(156, 171, 184, 1),
        fontWeight: FontWeight.normal,
        fontSize: 12);
  }

  static TextStyle transactionName() {
    return const TextStyle(
        color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14);
  }

  static TextStyle transactionNumber() {
    return const TextStyle(
        color: Color.fromRGBO(158, 173, 186, 1),
        fontWeight: FontWeight.normal,
        fontSize: 14);
  }

  static TextStyle transactionAmount() {
    return const TextStyle(
        color: Colors.black, fontWeight: FontWeight.w800, fontSize: 14);
  }

  static TextStyle transactionReason() {
    return const TextStyle(
        color: Colors.black, fontWeight: FontWeight.normal, fontSize: 12);
  }

  static TextStyle transactionSuccess() {
    return TextStyle(
        color: AppColors.onSuccessContainer,
        fontWeight: FontWeight.w800,
        fontSize: 10);
  }

  static TextStyle transactionFailed() {
    return TextStyle(
        color: AppColors.onErrorContainer,
        fontWeight: FontWeight.w800,
        fontSize: 10);
  }

  static TextStyle dateTextStyle() {
    return const TextStyle(
        color: Color.fromRGBO(156, 171, 184, 1),
        fontWeight: FontWeight.w800,
        fontSize: 10);
  }

  static TextStyle floatingActionButtonText() {
    return const TextStyle(
        color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w800);
  }

  static TextStyle selectedBottomNavItem() {
    return const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontSize: 10,
    );
  }

  static TextStyle unSelectedBottomNavItem() {
    return const TextStyle(
      color: Color.fromRGBO(203, 203, 203, 1),
      fontWeight: FontWeight.normal,
      fontSize: 10,
    );
  }


}
