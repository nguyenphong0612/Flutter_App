import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About Application'),
          //centerTitle: Platform.isAndroid,
          backgroundColor: const Color.fromARGB(255, 7, 47, 80),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Application - Adjust color',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Text(
                'This is a Application 1, written by Nguyen Trung Phong'),
            
            ElevatedButton(
              child: const Text('Go back'),
              onPressed: () {
                Navigator.of(context).pop((MaterialPageRoute(builder: (context) {
                  return const MainApp();
                })));
              },
            )
          ],
        ));
  }
}
