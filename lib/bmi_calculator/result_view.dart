import 'package:flutter/material.dart';
import 'package:prog1/bmi_calculator/colors.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.result});
  final double result;

  @override
  Widget build(BuildContext context) {
    TextStyle styal1 = TextStyle(
        color: AppColors.white, fontSize: 33, fontWeight: FontWeight.bold);

    TextStyle styal2 = TextStyle(color: AppColors.white, fontSize: 14);
    String getClassification() {
      if (result < 16) {
        return 'severe Thinness';
      } else if (result >= 18.5 && result < 25) {
        return 'Normal';
      } else {
        return 'Obese class III';
      }
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              getClassification(),
              style: styal2,
            ),
            Text(
              result.toStringAsFixed(2),
              style: styal1,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Re-CALCULATE')),
            )
          ]),
        ),
      ),
    );
  }
}
