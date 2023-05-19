import 'package:designed_form/screen/login.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp( MaterialApp(
    initialRoute: '/',
routes: {
  '/' :(context) =>  const Login(),
  
},
  ));
}