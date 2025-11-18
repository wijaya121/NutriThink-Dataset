class MockAPI {
  static Future<double> getWeight() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return 120 + (10 - 5);  // Always returns 125g dummy
  }
}
