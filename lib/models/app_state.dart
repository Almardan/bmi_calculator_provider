import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppState extends ChangeNotifier {
  final Box box;
  
  AppState(this.box);

  bool get isSplash => box.get('isSplash', defaultValue: false);
  int get age => box.get('age', defaultValue: 30);
  int get weight => box.get('weight', defaultValue: 78);
  double get height => box.get('height', defaultValue: 175.0);
  bool get isMale => box.get('isMale', defaultValue: false);

  void setIsSplash(bool value) async {
    await box.put('isSplash', value);
    notifyListeners();
  }

  void setAge(int value) async {
    await box.put('age', value);
    notifyListeners();
  }

  void setWeight(int value) async {
    await box.put('weight', value);
    notifyListeners();
  }

  void setHeight(double value) async {
    await box.put('height', value);
    notifyListeners();
  }

  void setGender(bool value) async {
    await box.put('isMale', value);
    notifyListeners();
  }

  double calculateBMI() {
    return weight / ((height / 100) * (height / 100));
  }
}