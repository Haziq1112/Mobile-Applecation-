import 'package:flutter/material.dart';

class CurrencyTextButton extends StatelessWidget {
  const CurrencyTextButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
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
          'Convertor Button',
          style: TextStyle(color: Color.fromARGB(122, 228, 231, 238)),
        ),
      ),
    );
  }
}
