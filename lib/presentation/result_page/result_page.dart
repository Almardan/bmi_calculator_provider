import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';
import 'widgets/page_title.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.bmi, required this.message});

  final double bmi;
  final String message;
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
      body: Column(
        children: [
          const SizedBox(height: 30),
          const Center(
            child: PageTitle(
              text: "Body Mass Index",
              fontWeight: FontWeight.w400,
              size: 30,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: AppColors.boxColor,
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    const PageTitle(
                      text: "BMI Results",
                      fontWeight: FontWeight.w400,
                      size: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          bmi.toStringAsFixed(1),
                          style: const TextStyle(
                            fontSize: 120,
                            color: AppColors.customBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 44),
                      child: Text(
                        message,
                        style: const TextStyle(
                          fontSize: 30,
                          color: AppColors.customBlue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
