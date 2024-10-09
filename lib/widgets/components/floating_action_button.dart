import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/utils/app_colors.dart';
import 'package:hubtel_coding_challenge/utils/constants.dart';
import '../../utils/app_widget_helper.dart';

class SendNewFAB extends StatelessWidget {
  final bool hide;
  const SendNewFAB({super.key, required this.hide});

  @override
  Widget build(BuildContext context) {
    return hide? const SizedBox() : Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.fabContainer,
        borderRadius: const BorderRadius.all(Radius.circular(6))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.add_circle, color: Colors.white, size: 32),
          const SizedBox(width: 8),
          Text(Constants.sendNew,
            style: AppTextStyles.floatingActionButtonText())
        ],
      )
    );
  }
}
