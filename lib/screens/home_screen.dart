import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const font30 = TextStyle(fontSize: 30);
	int counter = 10;

    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
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
          onPressed: () { counter++; },
        ));
  }
}
