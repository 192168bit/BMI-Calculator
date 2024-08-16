import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi = 0.0; // Initialize _bmi

  CalculatorBrain({required this.height, required this.weight});

  // Method to calculate BMI and update _bmi
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1); // Return formatted BMI
  }

  // Method to get BMI result category
  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  // Method to get BMI interpretation
  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
