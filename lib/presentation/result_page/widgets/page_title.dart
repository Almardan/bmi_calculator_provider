import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key, this.size, required this.fontWeight, required this.text});

  final double? size;
  final FontWeight fontWeight;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: AppColors.appBarTitle,
      ),
    );
  }
}
