import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/app_state.dart';
import '../../utils/constants/app_colors.dart';
import '../result_page/result_page.dart';
import 'widgets/calculate_bmi_button.dart';
import 'widgets/custom_age_card.dart';
import 'widgets/custom_gender_card.dart';
import 'widgets/custom_height_card.dart';
import 'widgets/custom_weight_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: AppColors.appBarTitle,
          ),
        ),
        centerTitle: true,
      ),
      body: Consumer<AppState>(
        builder: (context, appState, child) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 220,
                    width: 180,
                    child: CustomAgeCard(
                      title: "Age",
                    ),
                  ),
                  const SizedBox(
                    height: 220,
                    width: 180,
                    child: CustomWeightCard(
                      title: 'Weight(Kg)',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomHeightCard(
                onChanged: (value) => appState.setHeight(value),
                height: appState.height,
              ),
              const SizedBox(height: 10),
              CustomGenderCard(
                value: appState.isMale,
                onChanged: (value) => appState.setGender(!appState.isMale),
              ),
              const SizedBox(height: 14),
              CalculateBmiButton(
                onPressed: () {
                  double bmi = appState.calculateBMI();
                  String message;
                  if (bmi < 18.5) {
                    message = "Underweight";
                  } else if (bmi >= 18.5 && bmi < 25) {
                    message = "Normal weight";
                  } else if (bmi >= 25 && bmi < 30) {
                    message = "Overweight";
                  } else {
                    message = "Obese";
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        bmi: bmi,
                        message: message,
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}