# first_quiz

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.














import 'package:flutter/material.dart';
class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(205, 243, 241, 241),
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [const Text("Currency Converter",style: TextStyle(color: Color.fromARGB(255, 16, 2, 1),fontSize: 30,fontWeight: FontWeight.bold),),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Enter amount to convert",
              hintStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(
                Icons.monetization_on,
                color: Colors.white,
              ),
              filled: true,
              fillColor: Color.fromARGB(222, 3, 17, 109),
              focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(
              color: Color.fromARGB(222, 3, 18, 119),
              width: 2.0,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignCenter,
                )
              ),
              enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(
              color: Color.fromARGB(222, 1, 11, 75),
              width: 2.0,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignCenter,
                ),
              ),
          ),
          keyboardType: TextInputType.numberWithOptions(
            decimal: true
          ),
          ),
        ),
        TextButton(
          onPressed: () {
          debugPrint('Pressed');
        },
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            Color.fromARGB(222, 3, 13, 80)
          ),
          foregroundColor: WidgetStatePropertyAll(
            Color.fromARGB(222,63,76,160)
          ),
          fixedSize: WidgetStatePropertyAll(
            Size(200, 50),
          )
        ),
        child: const Text(
            'Convert',
            style: TextStyle(color: Colors.white),
        ), 
        )
      ],)
    ),
    ),
  );
  
}

}


