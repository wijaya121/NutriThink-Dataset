import 'package:flutter/material.dart';
import 'pages/weighing_page.dart';
import 'pages/recommendation_page.dart';
import 'providers/nutrition_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const NutriThinkApp());
}

class NutriThinkApp extends StatelessWidget {
  const NutriThinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NutritionProvider(),
      child: MaterialApp(
        title: 'NutriThink Dummy',
        home: const WeighingPage(),
        routes: {
          '/recommendation': (_) => const RecommendationPage(),
        },
      ),
    );
  }
}
