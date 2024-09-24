import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import '../../helper/app_widget_helper.dart';
import '../../model/transaction.dart';
import '../components/date_card.dart';
import '../components/search_card.dart';
import '../components/transaction_card.dart';

class PaymentHistoryScreen extends StatefulWidget {
  const PaymentHistoryScreen({super.key});

  @override
  State<PaymentHistoryScreen> createState() => _PaymentHistoryScreenState();
}

class _PaymentHistoryScreenState extends State<PaymentHistoryScreen> {
  var groupedTransactions = transactions.groupListsBy((collection)=> collection.date);
  int currentItemIndex = 2;
  bool isHistory = true;
  bool isTransactionSummary = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(15, 50, 15, 10),
          child: Column(
            children: [

              Container(
                height: 50,
                padding: EdgeInsets.all(1),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 48,
                        decoration:  BoxDecoration(
                        color: isHistory? Colors.white : Colors.grey[700],
                            borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                        child: Center(child: Text("History", style: AppWidget.transactionAmount(),))),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 48,
                        decoration:  BoxDecoration(
                        color: isTransactionSummary? Colors.white : Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                        child: Center(child: Text("Transaction Summary", style: AppWidget.transactionAmount(),))),
                    )
                  ],
                ),
              ),

              Divider(height: 50,),

              //const SizedBox(height: 30),

              const Row(
                children: [
                  // Search Bar
                  Expanded(child: SearchCard()),
                  SizedBox(width: 10,),
                  Icon(Icons.tune, color: Colors.black87, size: 30,),
                ],
              ),



              const SizedBox(height: 10),

              // Transaction card
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: groupedTransactions.keys.map((date){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(top: 20, bottom: 10),
                              child: DateCard(date: date)),
                          Column(
                            children: groupedTransactions[date]!.map((transaction){
                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 8),
                                child: TransactionCard(
                                  name: transaction.name,
                                  amount: transaction.amount,
                                  image: transaction.image,
                                  time: transaction.time,
                                  number: transaction.number,
                                  reason: transaction.reason,
                                  status: transaction.isSuccess,
                                  reasonDescription: transaction.reasonDescription,
                                ),
                              );
                            }).toList(),
                          )
                        ],
                      );
                    }).toList(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

      floatingActionButton: SizedBox(
        height: 50.0,
        width: 120.0,
        child: FloatingActionButton(onPressed: () {  },
          backgroundColor: const Color.fromRGBO(25, 210, 210, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.add_circle, color: Colors.white,),
              const SizedBox(width: 8),
              Text("SEND NEW",
                style: AppWidget.floatingActionButtonText(),)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.black38,
          currentIndex: currentItemIndex,
          onTap: (index){
            setState(() {
              currentItemIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt_outlined), label: "History"),
            BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: "Ticket"),
          ]
      ),
    );
  }
}