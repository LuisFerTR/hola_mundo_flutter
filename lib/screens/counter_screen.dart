import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen>{

  int counter = 10;
	
  @override
  Widget build(BuildContext context) {
    const font30 = TextStyle(fontSize: 30);
	
    return Scaffold(
        appBar: AppBar(
          title: const Text('CounterScreen'),
          elevation: 10.0,
        ),
        backgroundColor: Colors.indigo,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de clicks', style: font30),
            Text('$counter', style: font30)
          ],
        )),
		floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {  counter++; 
						setState(() {}) },
        ));
  }
}
