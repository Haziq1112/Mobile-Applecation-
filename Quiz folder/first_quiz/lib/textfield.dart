import 'package:flutter/material.dart';

class CurrencyConvertertextfield extends StatelessWidget {
  const CurrencyConvertertextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
              )),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
              color: Color.fromARGB(222, 1, 11, 75),
              width: 2.0,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignCenter,
            ),
          ),
        ),
        keyboardType: TextInputType.numberWithOptions(decimal: true),
      ),
    );
  }
}
