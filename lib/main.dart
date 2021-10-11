import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  void addCounter() {
    setState(() {
      counter += 1;
    });
  }

  void decreaseCounter() {
    setState(() {
      counter -= 1;
    });
  }

  void mathCalcForCounter(String type) {
    setState(() {
      if (type == "add") {
        counter += 1;
      }
      if (type == "decrease") {
        counter -= 1;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Learn Statefull Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(counter.toString()),
              ElevatedButton(onPressed: addCounter, child: const Text("Add Counter"),),
              ElevatedButton(onPressed: decreaseCounter, child: const Text("Decrease Counter"))
            ],
          ),
        ),
      ),
    );
  }
}
