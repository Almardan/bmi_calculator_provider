import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'models/app_state.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  
  await Hive.initFlutter();
  
  
  final box = await Hive.openBox('bmiBox');
  
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppState(box),
      child: const MyApp(),
    ),
  );
}