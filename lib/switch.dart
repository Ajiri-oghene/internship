import 'package:flutter/material.dart';


class SwitchMode extends StatefulWidget {
  const SwitchMode({Key? key}) : super(key: key);

  @override
  State<SwitchMode> createState() => _SwitchModeState();
}

class _SwitchModeState extends State<SwitchMode> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: light,
        activeColor: Colors.white,
        activeTrackColor: Colors.green,
        onChanged: (bool value) {
          setState(() {
            light = value;
          });
        }
    );
  }
}
