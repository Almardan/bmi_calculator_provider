import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../models/app_state.dart';
import '../../../utils/constants/app_colors.dart';
import '../../widgets/card_number.dart';
import '../../widgets/card_title.dart';
import 'custom_button.dart';

class CustomAgeCard extends StatelessWidget {
  const CustomAgeCard({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return Card(
          color: AppColors.boxColor,
          elevation: 2,
          child: Column(
            children: [
              const SizedBox(height: 14),
              CardTitle(title: title),
              const SizedBox(height: 14),
              CardNumber(
                number: appState.age.toString(),
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    icon: const Icon(Icons.add),
                    onPressed: () => appState.setAge(appState.age + 1),
                  ),
                  CustomButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () => appState.setAge(appState.age - 1),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}