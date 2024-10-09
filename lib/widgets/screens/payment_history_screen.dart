import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubtel_coding_challenge/utils/app_drawables.dart';
import 'package:hubtel_coding_challenge/utils/constants.dart';
import 'package:hubtel_coding_challenge/widgets/components/transaction_history.dart';
import '../../model/transaction.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_widget_helper.dart';

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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: Container(
                height: 36,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: AppColors.greyBackground,
                    borderRadius: const BorderRadius.all(Radius.circular(6))
                ),
                child: TabBar(
                    dividerColor: Colors.transparent,
                    labelStyle: AppTextStyles.selectedTabBar(),
                    labelColor: Colors.black,
                    indicatorColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelStyle: AppTextStyles.unSelectedTabBar(),
                    unselectedLabelColor: Colors.black.withOpacity(0.20),
                    labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                    indicator: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                    tabs: const [
                      Text(Constants.history),
                      Text(Constants.transactionSummary),
                    ]),
              ),
            ),
          ),
        body: const TabBarView(children: [
          TransactionHistory(),
          Center(child: Text(Constants.transactionSummary))
        ]),

        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: AppTextStyles.selectedBottomNavItem(),
          unselectedLabelStyle: AppTextStyles.unSelectedBottomNavItem(),
          showUnselectedLabels: true,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.2),
          currentIndex: currentItemIndex,
            onTap: (index){
              setState(() {
                currentItemIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(icon: SvgPicture.asset(AppDrawables.icHome), label: ""),
              BottomNavigationBarItem(icon: SvgPicture.asset(AppDrawables.icSend), label: Constants.successful),
              BottomNavigationBarItem(icon: SvgPicture.asset(AppDrawables.icHistory), label: Constants.history),
              BottomNavigationBarItem(icon: SvgPicture.asset(AppDrawables.icSchedule), label: Constants.schedule),

            ]
        ),
      ),
    );
  }
}