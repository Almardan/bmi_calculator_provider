import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../widgets/card_number.dart';
import '../../widgets/card_title.dart';

class CustomHeightCard extends StatelessWidget {
  const CustomHeightCard(
      {super.key, required this.onChanged, required this.height});

  final ValueChanged<double> onChanged;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 220,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: AppColors.boxColor,
          elevation: 2,
          child: Column(
            children: [
              const SizedBox(height: 10),
              const CardTitle(title: "Height (CM)"),
              const SizedBox(height: 14),
              CardNumber(number: "${height.toInt()}"),
              Slider(
                activeColor: AppColors.sliderColor,
                inactiveColor: AppColors.sliderColor,
                thumbColor: AppColors.customBlue,
                max: 300,
                min: 50,
                value: height,
                onChanged: onChanged,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("50 cm"), Text("300 cm")],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
