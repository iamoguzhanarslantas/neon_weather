import 'package:flutter/material.dart';

class WeatherInfo extends StatelessWidget {
  final String? text;
  final String? info1;
  final String? info2;
  const WeatherInfo({
    super.key,
    this.text,
    this.info1,
    this.info2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text ?? '',
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 20,
          ),
        ),
        Text(
          info1 ?? '',
        ),
        Text(
          info2 ?? '',
        ),
      ],
    );
  }
}
