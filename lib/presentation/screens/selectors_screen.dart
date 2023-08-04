import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/checkbox_widget.dart';

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
      body: _SelectorsView(),
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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: checkboxList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(checkboxList[index]['label'],
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.blue[900])),
          leading: CheckboxWidget(
            isChecked: checkboxList[index]['value'],
            onChanged: (bool newValue) {
              setState(() {
                checkboxList[index]['value'] = newValue;
              });
            },
          ),
        );
      },
    );
  }
}
