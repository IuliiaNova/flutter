import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/checkbox_widget.dart';
import '../widgets/select_widget.dart';

class SelectorsScreen extends StatelessWidget {
  const SelectorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.account_circle_outlined, size: 40),
        ),
        title: const Text('Selectors'),
        centerTitle: true,
      ),
      body: Column(children: [
        _SelectorsView(),
        const SizedBox(height: 20),
        const SelectOpciones(),
      ]),
    );
  }
}

class _SelectorsView extends StatefulWidget {
  @override
  _SelectorsViewState createState() => _SelectorsViewState();
}

class _SelectorsViewState extends State<_SelectorsView> {
  List<Map<String, dynamic>> checkboxList = [
    {'label': 'Checkbox 1', 'value': false},
    {'label': 'Checkbox 2', 'value': true},
    {'label': 'Checkbox 3', 'value': true},
    {'label': 'Checkbox 4', 'value': true},
    {'label': 'Checkbox 5', 'value': true},
  ];

  get children => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          'Selectors with "checkboxes',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
          children: checkboxList.map((item) {
            return ListTile(
              title: Text(item['label'],
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  )),
              leading: CheckboxWidget(
                isChecked: item['value'],
                onChanged: (bool newValue) {
                  setState(() {
                    item['value'] = newValue;
                  });
                },
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
