
import 'package:flutter/material.dart';

void main(){
  runApp(
  MaterialApp(
  home:Scaffold(
  body : Container(
  decoration :const BoxDecoration (
  gradient : LinearGradient (
  begin : Alignment.topLeft,
  end : Alignment.bottomRight,
  colors:[
  colors.blue,
  colour.green,
  ],
  ),
  ),
  child : const Center(
  child:text(
  'Haziq Ahmad',
  style:textStyle(
  fontSize:24,
  color:colors.white,
  ),
  ),
  ),
  ),
  ),
  ),
  );
}
