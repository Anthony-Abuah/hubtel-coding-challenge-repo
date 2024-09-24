import 'package:flutter/material.dart';
import '../../helper/app_widget_helper.dart';


class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Container(
      height: 45,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(220, 220, 220, 1),
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: TextField(
        controller: searchController,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            labelText: "Search Hubtel",
            labelStyle: AppWidget.searchLabelStyle(),
            prefixIcon: const Icon(Icons.search, color: Colors.black87),
            border: InputBorder.none
        ),
      ),
    );
  }
}