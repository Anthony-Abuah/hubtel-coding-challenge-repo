

import 'package:hubtel_coding_challenge/utils/app_drawables.dart';

class Transaction{
  final String name;
  final String amount;
  final String time;
  final String image;
  final String number;
  final String reason;
  final String reasonDescription;
  final String date;
  final bool isSuccess;


  Transaction({
    required this.name,
    required this.amount,
    required this.time,
    required this.image,
    required this.number,
    required this.reason,
    required this.reasonDescription,
    required this.date,
    required this.isSuccess
  });
}

List<Transaction> transactions = [

  Transaction(name: "Emmanuel Rockson Kwabena Uncle Ebo",
      amount: "500",
      time: "14: 45 GMT",
      image: AppDrawables.imgMomo,
      number: "0241234567",
      reason: "Personal",
      reasonDescription: "Cool your heart wai",
      date: "May 24, 2022",
      isSuccess: true
  ),
  Transaction(name: "Absa Bank",
      amount: "500",
      time: "14: 45 GMT",
      image: AppDrawables.imgAbsa,
      number: "0241234567",
      reason: "Personal",
      reasonDescription: "Cool your heart wai",
      date: "May 24, 2022",
      isSuccess: false
  ),
  Transaction(name: "Emmanuel Rockson",
      amount: "500",
      time: "14: 45 GMT",
      image: AppDrawables.imgMomo,
      number: "0241234567",
      reason: "Personal",
      reasonDescription: "Cool your heart wai",
      date: "May 23, 2022",
      isSuccess: true
  ),
  Transaction(name: "Emmanuel Rockson",
      amount: "500",
      time: "14: 45 GMT",
      image: AppDrawables.imgMomo,
      number: "0241234567",
      reason: "Personal",
      reasonDescription: "",
      date: "May 23, 2022",
      isSuccess: true
  ),
];
