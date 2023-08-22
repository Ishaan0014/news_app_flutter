import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RESULTPAGE extends StatelessWidget {
  double bmivalue = 0.0;
  RESULTPAGE({super.key, required this.bmivalue});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'THIS IS YOUR BMI',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'BMI: ${bmivalue.toString().substring(0, 5)}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
