import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'presentation/home_screen/home_screen.dart';
import 'presentation/splash_screen/splash_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? isSplash;

  void getInstance() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isSplash = prefs.getBool("splash");
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: isSplash == true ? const HomeScreen() : const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
