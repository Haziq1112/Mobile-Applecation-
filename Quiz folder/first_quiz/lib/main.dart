import 'package:flutter/material.dart';
import 'currency_convertor.dart';
void main(){
  runApp(const  mob() );
}

class mob extends StatelessWidget{
  const mob ({super.key});
  @override
  Widget build (BuildContext context){
    return const MaterialApp(
      home: CurrencyConverter(),
    );
  }
}