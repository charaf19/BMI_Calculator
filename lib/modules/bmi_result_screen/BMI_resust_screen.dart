import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bmi_calculator/modules/bmi_main_screen/BMI_Calculator.dart';

class BmiResultScreen extends StatelessWidget {
  final bool isMale;
  final int age;
  final double result;
  BmiResultScreen({
    required this.age,
    required this.isMale,
    required this.result,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'GENDER : ${isMale ? 'MALE' : 'FEMALE'}',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            'RESULT : ${result.round()}',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            'AGE : $age',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}
