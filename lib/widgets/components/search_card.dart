import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/utils/app_widget_helper.dart';
import 'package:hubtel_coding_challenge/utils/constants.dart';
import '../../utils/app_colors.dart';


class SearchCard extends StatelessWidget {
  final TextEditingController searchController;
  const SearchCard({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
          color: AppColors.greyBackground,
          borderRadius: const BorderRadius.all(Radius.circular(8))
      ),
      child: TextField(
        controller: searchController,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            hintText: Constants.search,
            hintStyle: AppTextStyles.searchLabelStyle(),
            prefixIcon: const Icon(Icons.search, color: Colors.black),
            border: InputBorder.none
        ),
      ),
    );
  }
}