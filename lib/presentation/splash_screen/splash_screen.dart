import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/app_state.dart';
import '../../utils/constants/app_colors.dart';
import '../home_screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashBackgroundColor,
      body: Column(
        children: [
          const SizedBox(height: 80),
          const Center(
            child: Text(
              "BMiDO",
              style: TextStyle(
                  color: AppColors.boxColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(height: 30),
          Image.asset(
            "assets/png/splash_logo.png",
            height: 250,
            width: 250,
          ),
          const SizedBox(height: 50),
          const Text(
            "Get Started with\nTracking Your Health!",
            style: TextStyle(
              color: AppColors.boxColor,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Calculate your BMI and stay on top of\nyour wellness journey, effortlessly.",
            style: TextStyle(
              color: Color(0xffC6C3F9),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 60),
          SizedBox(
            height: 74,
            width: 330,
            child: Consumer<AppState>(
              builder: (context, appState, child) {
                return ElevatedButton(
                  onPressed: () {
                    appState.setIsSplash(true);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FadeInDownBig(
                          child: const HomeScreen(),
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}