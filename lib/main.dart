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
  String message = "";
  List<Widget> widgets = [];

  void addCounter() {
    setState(() {
      widgets.add(Text("Data ke-" + counter.toString()));
      counter++;
    });
  }

  void decreaseCounter() {
    setState(() {
      widgets.removeLast();
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
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(counter.toString()),
              Text(message),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: addCounter, child: const Text("Add Counter"),),
                  ElevatedButton(onPressed: decreaseCounter, child: const Text("Decrease Counter")),
                ],
              ),
              Column(
                children: widgets,)
            ],
          ),
        ),
      ),
    );
  }
}
