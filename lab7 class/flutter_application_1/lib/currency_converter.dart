import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});
  @override
  State<CurrencyConverter> createState() => _CurrencyConverter();
}

class _CurrencyConverter extends State<CurrencyConverter> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 26, 17, 6),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    result.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                   Padding(
                    padding:const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: textEditingController,
                      decoration:const InputDecoration(
                        hintText: "please enter amount in rupees",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 38, 39, 38)),
                        prefixIcon: Icon(Icons.monetization_on),
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 41, 35, 35),
                              width: 2.0,
                              style: BorderStyle.solid,
                              strokeAlign: BorderSide.strokeAlignOutside,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(222, 252, 252, 252),
                              width: 2.0,
                              style: BorderStyle.solid,
                              strokeAlign: BorderSide.strokeAlignOutside,
                            )),
                      ),
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // debugPrint("Pressed");
                      setState(() {
                        result = double.parse(textEditingController.text) / 300;
                      });
                    },
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll<Color>(
                        Color.fromARGB(255, 111, 16, 219),
                      ),
                      fixedSize: WidgetStatePropertyAll<Size>(
                        Size(200, 50),
                      ),
                    ),
                    child: const Text(
                      'Convert Button',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ],
              ),
            )));
  }
}
