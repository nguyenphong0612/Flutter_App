import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_page.dart';
import 'package:flutter_application_1/color_value.dart';

class ControlColor extends StatefulWidget {
  const ControlColor({super.key, required this.color});
  final MyColorValue color;
  @override
  State<ControlColor> createState() => _ControlColorState();
}

class _ControlColorState extends State<ControlColor> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 400,
          height: 200,
          margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          color: Color.fromARGB(255, 7 + widget.color.value.round(),
              widget.color.value.round(), 114),
        ),
        SliderTheme(
            data: SliderTheme.of(context).copyWith(
                thumbShape:
                    const RoundSliderThumbShape(enabledThumbRadius: 12.0),
                overlayShape:
                    const RoundSliderOverlayShape(overlayRadius: 24.0)),
            child: Slider(
              value: widget.color.value, //widget.color.value,
              onChanged: (double newValue) {
                widget.color.value = newValue;
                setState(() {});
              },
              activeColor: Colors.red,
              inactiveColor: Colors.grey,
              min: 0,
              max: 255,
            )),
        IconButton(
          icon: const Icon(Icons.info),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const AboutPage();
            }));
          }),
      ],
    );
  }
}
