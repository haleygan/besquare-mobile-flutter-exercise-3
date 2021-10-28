import 'package:flutter/material.dart';

String dropdownValue = 'Male';

class Gender extends StatefulWidget {
  @override
  _GenderDropDown createState() => _GenderDropDown();
}

class _GenderDropDown extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent[100],
      ),
      value: dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        'Male',
        'Female',
        'Other',
        'Rather not say',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: Text('Select Gender'),
    );
  }
}
