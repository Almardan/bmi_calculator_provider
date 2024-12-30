import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';

class CalculateBmiButton extends StatelessWidget {
  const CalculateBmiButton({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.customBlue,
            foregroundColor: AppColors.boxColor,
          ),
          onPressed: onPressed,
          child: const Text(
            "Calculate BMI",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
