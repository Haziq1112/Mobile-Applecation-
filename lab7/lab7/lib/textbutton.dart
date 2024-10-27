import 'package:flutter/material.dart';

class CurrencyConvertorPage extends StatelessWidget {
  const CurrencyConvertorPage({super.key});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        debugPrint("Pressed");
      },
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(
          Color.fromARGB(222, 63, 76, 160),
        ),
        foregroundColor: WidgetStatePropertyAll<Color>(
          Color.fromARGB(222, 63, 76, 160),
        ),
        fixedSize: WidgetStatePropertyAll<Size>(
          Size(200, 50),
        ),
      ),
      child: const Text(
        'convert',
        style: TextStyle(color: Color.fromARGB(123, 56, 90, 160)),
      ),
    );
  }
}
