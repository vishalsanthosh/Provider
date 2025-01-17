import 'package:counter_provider/counterProvider.dart';
import 'package:counter_provider/counterScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context)=> CounterproviderExp(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    ),
    );
  }}
