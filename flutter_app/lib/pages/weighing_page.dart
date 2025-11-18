import 'package:flutter/material.dart';
import '../services/mock_api.dart';
import 'package:provider/provider.dart';
import '../providers/nutrition_provider.dart';

class WeighingPage extends StatefulWidget {
  const WeighingPage({super.key});

  @override
  State<WeighingPage> createState() => _WeighingPageState();
}

class _WeighingPageState extends State<WeighingPage> {
  double? weight;

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<NutritionProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text("Weighing Page (Dummy)")),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Text(
            weight == null ? "No weight yet" : "$weight g",
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              double w = await MockAPI.getWeight();
              setState(() => weight = w);
              provider.updateWeight(w);
            },
            child: const Text("Read Dummy Weight"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/recommendation');
            },
            child: const Text("Go to Recommendation Page"),
          )
        ],
      ),
    );
  }
}
