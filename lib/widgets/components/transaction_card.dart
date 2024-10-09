import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubtel_coding_challenge/utils/app_drawables.dart';
import 'package:hubtel_coding_challenge/widgets/components/transaction_status.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_widget_helper.dart';

class TransactionCard extends StatelessWidget {
  final String name;
  final String amount;
  final String image;
  final String time;
  final String number;
  final String reason;
  final String reasonDescription;
  final bool status;
  const TransactionCard({super.key, required this.name, required this.amount, required this.image, required this.time, required this.number, required this.reason, required this.status, required this.reasonDescription});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyBackground),
          borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child:

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(time, style: AppTextStyles.transactionTime()),

            const SizedBox(height: 12),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Icon
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(image)),
                      shape: BoxShape.circle
                  ),
                ),

                const SizedBox(width: 8),

                Expanded(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(name,
                              style: AppTextStyles.transactionName(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),

                          IsSuccessful(success: status)

                        ],
                      ),

                      const SizedBox(height: 4),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(number,
                            style: AppTextStyles.transactionNumber(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),

                          Text("GHS $amount",
                            style: AppTextStyles.transactionAmount(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),

                        ],
                      )
                    ],
                  ),
                )
              ],
            ),

            Divider(height: 16, color: AppColors.greyBackground),

            Row(
              children: [
                Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle
                    ),
                    child: SvgPicture.asset(AppDrawables.icPerson)
                ),
                const SizedBox(width: 8),
                Text(reason, style: AppTextStyles.transactionReason()),
                const SizedBox(width: 8),
                reasonDescription.isNotEmpty ?  Icon(Icons.circle, size: 5, color: AppColors.dotSeperator): const SizedBox(),
                const SizedBox(width: 8),
                Text(reasonDescription, style: AppTextStyles.transactionReason()),
                reasonDescription.isEmpty ? const SizedBox(): const Spacer(),
                status? Icon(Icons.star, size: 20, color: AppColors.starBackground): const SizedBox(),
              ],
            )
          ],
        )
    );
  }
}