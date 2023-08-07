import 'package:flutter/material.dart';

class SelectOpciones extends StatefulWidget {
  const SelectOpciones({super.key});

  @override
  SelectOpcionesState createState() => SelectOpcionesState();
}

class SelectOpcionesState extends State<SelectOpciones> {
  int? selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text('Selectors with "radio"',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      RadioListTile(
        title: const Text('Opción 1'),
        value: 1,
        groupValue: selectedOption,
        onChanged: (value) {
          setState(() {
            selectedOption = value;
          });
        },
      ),
      RadioListTile(
        title: const Text('Opción 2'),
        value: 2,
        groupValue: selectedOption,
        onChanged: (value) {
          setState(() {
            selectedOption = value;
          });
        },
      ),
      RadioListTile(
        title: const Text('Opción 3'),
        value: 3,
        groupValue: selectedOption,
        onChanged: (value) {
          setState(() {
            selectedOption = value;
          });
        },
      ),
      RadioListTile(
        title: const Text('Opción 4'),
        value: 4,
        groupValue: selectedOption,
        onChanged: (value) {
          setState(() {
            selectedOption = value;
          });
        },
      ),
      RadioListTile(
        title: const Text('Opción 5'),
        value: 5,
        groupValue: selectedOption,
        onChanged: (value) {
          setState(() {
            selectedOption = value;
          });
        },
      ),
    ]);
  }
}
