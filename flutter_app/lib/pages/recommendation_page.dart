import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/nutrition_provider.dart';

class RecommendationPage extends StatelessWidget {
  const RecommendationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<NutritionProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text("Recommendation (Dummy)")),
      body: Center(
        child: Text(
          "Recommendation: ${provider.recommendation}",
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
