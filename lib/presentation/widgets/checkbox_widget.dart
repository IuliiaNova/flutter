import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  final bool isChecked;
  final ValueChanged<bool> onChanged;

  const CheckboxWidget(
      {super.key, required this.isChecked, required this.onChanged});

  @override
  State<StatefulWidget> createState() => _CheckboxState();
}

class _CheckboxState extends State<CheckboxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.blue;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
