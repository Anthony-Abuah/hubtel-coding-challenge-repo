import 'package:flutter/material.dart';

import '../../helper/app_widget_helper.dart';

class IsSuccessful extends StatelessWidget {
  const IsSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green[200],
          borderRadius: const BorderRadius.horizontal(left: Radius.circular(16), right: Radius.circular(16))
      ),
      width: 85,
      padding: const EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.check_circle, color: Colors.green, size: 15,),
          const SizedBox(width: 4),
          Text("Successful", style: AppWidget.transactionStatus(),)
        ],
      ),
    );
  }
}

class IsFailure extends StatelessWidget {
  const IsFailure({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          color: Colors.red[200],
          borderRadius: const BorderRadius.horizontal(left: Radius.circular(16), right: Radius.circular(16))
      ),
      width: 60,
      padding: const EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.cancel, color: Colors.redAccent, size: 15,),
          const SizedBox(width: 4),
          Text("Failed", style: AppWidget.transactionFailed(),)
        ],
      ),
    );
  }
}