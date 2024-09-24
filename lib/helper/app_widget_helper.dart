import 'package:flutter/material.dart';

class AppWidget{
  static TextStyle appBarTitle(){
    return const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w700,
        fontFamily: "Poppins-SemiBold",
        fontSize: 20
    );
  }
  static TextStyle searchLabelStyle(){
    return const TextStyle(
        color: Colors.black38,
        fontWeight: FontWeight.normal,
        fontFamily: "Poppins",
        fontSize: 16
    );
  }

  static TextStyle transactionTime(){
    return const TextStyle(
        color: Colors.black38,
        fontWeight: FontWeight.w700,
        fontFamily: "Poppins",
        fontSize: 10
    );
  }
  static TextStyle transactionName(){
    return const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins",
        fontSize: 14
    );
  }
  static TextStyle transactionNumber(){
    return const TextStyle(
        color: Colors.black38,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins",
        fontSize: 13
    );
  }
  static TextStyle transactionAmount(){
    return const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w700,
        fontFamily: "Poppins-SemiBold",
        fontSize: 12
    );
  }
  static TextStyle transactionReason(){
    return const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w500,
        fontFamily: "Poppins",
        fontSize: 14
    );
  }

  static TextStyle transactionReason1(){
    return const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w500,
        fontFamily: "Poppins",
        fontSize: 14
    );
  }

  static TextStyle transactionStatus(){
    return TextStyle(
        color: Colors.green[900],
        fontWeight: FontWeight.normal,
        fontFamily: "Poppins",
        fontSize: 8
    );
  }

  static TextStyle transactionFailed(){
    return TextStyle(
        color: Colors.red[900],
        fontWeight: FontWeight.normal,
        fontFamily: "Poppins",
        fontSize: 8
    );
  }
  static TextStyle dateTextStyle(){
    return const TextStyle(
        color: Colors.black38,
        fontWeight: FontWeight.w700,
        fontFamily: "Poppins",
        fontSize: 10
    );
  }


  static TextStyle floatingActionButtonText(){
    return const TextStyle(
        color: Colors.white,
        fontSize: 10.0,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600
    );
  }

}
