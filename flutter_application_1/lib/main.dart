import 'package:flutter/material.dart';

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
  
  double _colorValue = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              AppBar(
                title: const Text('Flutter app 1'),
                shadowColor: const Color.fromARGB(255, 64, 54, 24),
                backgroundColor: const Color.fromARGB(255, 7, 47, 80),
              ),
              Container(
                width: 400,
                height: 200,
                color: Color.fromARGB(255, 7, _colorValue.round(), 114),
              ),
              Slider(
                thumbColor: const Color.fromARGB(255, 7, 255, 114),
                activeColor: const Color.fromARGB(255, 46, 151, 8),
                value: _colorValue,
                min: 0,
                max: 255,
                label: _colorValue.round().toString(),
                onChanged: (double newRating) {
                  setState(() {
                    _colorValue = newRating;
                  });
                },
              ),
              Text('Count: $buttonCount'),
              ElevatedButton(
                onPressed: (){
                  buttonCount++;
                  
                },
                child: const Text('Count'),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
