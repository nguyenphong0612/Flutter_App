import 'package:flutter/material.dart';
import 'package:flutter_application_1/color_value.dart';
//import 'package:flutter_application_1/slider.dart';
//import 'package:flutter_application_1/container.dart';
import 'package:flutter_application_1/control_color.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int buttonCount = 0;
  late MyColorValue _color;
  
  @override
  void initState() {
    super.initState();
    _color = MyColorValue(MyColorValue.valueStart);
  }

  //double _colorValue = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              AppBar(
                title: const Text('Adjust color',
                 style: TextStyle(color: Colors.white),),
                shadowColor: const Color.fromARGB(255, 64, 54, 24),
                backgroundColor: const Color.fromARGB(255, 7, 47, 80),
              ),
              ControlColor(color: _color),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    pressedCount();
                  });
                },
                child: Text('Count: $buttonCount'),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  pressedCount() {
    buttonCount++;
  }
}
