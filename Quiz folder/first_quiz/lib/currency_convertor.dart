import 'package:flutter/material.dart';
import 'text.dart';
import 'textfield.dart';
import 'textbutton.dart';


class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter ({super.key});

 @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(234, 82, 155, 119),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CurrencyConverterText(),
              CurrencyConvertertextfield(),
              CurrencyTextButton(),
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




          

          
          
          



