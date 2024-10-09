import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubtel_coding_challenge/widgets/components/search_card.dart';
import 'package:hubtel_coding_challenge/widgets/components/transaction_card.dart';
import '../../model/transaction.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_drawables.dart';
import 'date_card.dart';
import 'floating_action_button.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  var groupedTransactions = transactions.groupListsBy((collection)=> collection.date);
  int currentItemIndex = 2;
  bool isHistory = true;
  bool isTransactionSummary = false;


  bool isLoading = true;
  bool hideFloatingActionButton = true;
  final Duration animationDuration = const Duration(milliseconds: 500);
  final ScrollController scrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();


  @override
  void initState() {
    searchController.addListener(_startSearch);
    scrollController.addListener(_scrollListener);
    networkCallDelay();
    super.initState();
  }

  @override
  void dispose() {
    searchController.removeListener(_startSearch);
    searchController.dispose();
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    super.dispose();
  }

  // Function to delay page for 2 seconds to mimic network call
  void networkCallDelay() async {
    hideFloatingActionButton = true;
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      isLoading = false;
      hideFloatingActionButton = false;
    });

  }

  // hide floating action button when scrolling upwards
  void _scrollListener() {
    final ScrollDirection direction = scrollController.position.userScrollDirection;
    setState(() {
      hideFloatingActionButton = ScrollDirection.reverse == direction;
    });

  }

  void _startSearch() async{
    final searchValue = searchController.text.toLowerCase();
    await Future.delayed(const Duration(seconds: 2));
    final modifiedTransactions = transactions.where((transaction) => transaction.name.toLowerCase().contains(searchValue) ).toList();
    setState(() {
      groupedTransactions =
      (searchValue.isNotEmpty) ? modifiedTransactions.groupListsBy((
          collection) => collection.date) :
      transactions.groupListsBy((collection) => collection.date);
    });
  }

  TextEditingController searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SendNewFAB(hide: hideFloatingActionButton),
      body: isLoading? const Center(child: CircularProgressIndicator()):
      Column(
        children: [
          Divider(height: 20, color: AppColors.greyBackground),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                // Search Bar
                Expanded(child: SearchCard(searchController: searchController,)),
                const SizedBox(width: 8),
                SvgPicture.asset(AppDrawables.icTune, height: 44, width: 44)
              ],
            ),
          ),
          const SizedBox(height: 8),

          Expanded(
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: groupedTransactions.keys.map((date){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 8),
                          child: DateCard(date: date)),
                      Column(
                        children: groupedTransactions[date]!.map((transaction){
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
          ),
        ],
      ),
    );
  }
}
