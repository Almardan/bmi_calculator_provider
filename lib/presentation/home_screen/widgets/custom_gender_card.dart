import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../widgets/card_title.dart';
import 'custom_switch.dart';

class CustomGenderCard extends StatelessWidget {
  const CustomGenderCard({super.key, this.onChanged, required this.value});

  final bool value;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 160,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: AppColors.boxColor,
          elevation: 2,
          child: Column(
            children: [
              const SizedBox(height: 14),
              const CardTitle(title: "Gender"),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CardTitle(title: "Male"),
                    CustomSwitch(
                      value: value,
                      onChanged: onChanged,
                    ),
                    const CardTitle(title: "Female"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
