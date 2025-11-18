import 'package:flutter/material.dart';

class NutritionProvider extends ChangeNotifier {
  double weight = 0;
  String recommendation = "None";

  void updateWeight(double w) {
    weight = w;
    _generateRecommendation();
    notifyListeners();
  }

  void _generateRecommendation() {
    if (weight < 50) {
      recommendation = "ADD_ENERGY";
    } else if (weight > 150) {
      recommendation = "REDUCE_PORTION";
    } else {
      recommendation = "BALANCED";
    }
  }
}
