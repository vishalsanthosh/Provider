import 'package:counter_provider/counterProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    final counterProvider= Provider.of<CounterproviderExp>(context);
    return Scaffold(
   appBar: AppBar(
    title: Text("Counter App"),
   ),
   body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Times Button pressed"),
      Text("${counterProvider.count}")
    ],
    ),
   ),
   floatingActionButton:Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
       FloatingActionButton(onPressed: (){
        counterProvider.increment();
       },
   child: Icon(Icons.add)),
   SizedBox(width: 10,),
   FloatingActionButton(onPressed: (){
    counterProvider.decrement();
   },
   child: Icon(Icons.remove),)
    ],
   )
   
  
    );
  }
}