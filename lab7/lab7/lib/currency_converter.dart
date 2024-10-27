import 'package:flutter/material.dart';
import 'text.dart';
import 'textbutton.dart';
import 'textfield.dart';

class CurrencyConvertorPage extends StatelessWidget {
  const CurrencyConvertorPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(234, 82, 155, 119),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
