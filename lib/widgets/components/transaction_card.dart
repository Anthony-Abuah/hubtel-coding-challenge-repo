import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/widgets/components/transaction_status.dart';

import '../../helper/app_widget_helper.dart';

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
          border: Border.all(color: Color.fromRGBO(220, 220, 220, 1)),
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      height: 155,
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(time, style: AppWidget.transactionTime(),),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon
              Container(
                margin: const EdgeInsets.only(top: 5, right: 5),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/$image.png")),
                    shape: BoxShape.circle
                ),
              ),

              // Name and Number
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                      style: AppWidget.transactionName(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 10),
                    Text(number,
                      style: AppWidget.transactionNumber(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 5),

              // Transaction status and amount
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    status?  const IsSuccessful(): const IsFailure(),
                    const SizedBox(height: 10),
                    Text("GHS $amount",
                      style: AppWidget.transactionAmount(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),

            ],
          ),

          const Spacer(),

          Column(
            children: [
              const Divider(height: 16, color: Color.fromRGBO(200, 200, 200, 1),),
              Row(
                children: [
                  Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[200],//Color.fromRGBO(200, 200, 200, 1),
                          shape: BoxShape.circle
                      ),
                      child: const Icon(Icons.person, color: Colors.deepPurple, size: 15,)
                  ),
                  const SizedBox(width: 4),
                  Text(reason, style: AppWidget.transactionReason()),
                  const SizedBox(width: 4),
                  const Icon(Icons.circle, size: 5, color: Colors.black26,),
                  const SizedBox(width: 4),
                  Text(reasonDescription, style: AppWidget.transactionReason()),
                  reasonDescription.isEmpty ? SizedBox(width: 10,): Spacer(),
                  Icon(Icons.star, size: 20, color: Colors.yellow[700],),


                ],
              )
            ],
          )
          // Horizontal Divider
        ],
      ),
    );
  }
}