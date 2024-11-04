import 'package:flutter/material.dart';

class CurrencyText extends StatelessWidget {
  const CurrencyText({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(10.0),
      child:  Text(
         'Welcome To Currency Converter',
              style: TextStyle(color: Colors.white),
      ),
    );
  }
}
