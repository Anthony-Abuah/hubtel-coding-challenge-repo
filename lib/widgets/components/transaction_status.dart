import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/utils/app_widget_helper.dart';
import 'package:hubtel_coding_challenge/utils/constants.dart';
import '../../utils/app_colors.dart';

class IsSuccessful extends StatelessWidget {
  final bool success;
  const IsSuccessful({super.key, required this.success});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: success? AppColors.successContainer : AppColors.errorContainer,
          borderRadius: const BorderRadius.horizontal(left: Radius.circular(12), right: Radius.circular(12))
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(success? Icons.check_circle : Icons.cancel, color: success? AppColors.onSuccessContainer : AppColors.onErrorContainer, size: 12),
          const SizedBox(width: 4),
          Text(success? Constants.successful : Constants.failed, style: success? AppTextStyles.transactionSuccess(): AppTextStyles.transactionFailed())
        ],
      ),
    );
  }
}
