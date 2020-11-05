import 'package:flutter/material.dart';

class Billsplitaddpage extends StatefulWidget {
  @override
  _BillsplitaddpageState createState() => _BillsplitaddpageState();
}

class _BillsplitaddpageState extends State<Billsplitaddpage> {
  var _categories = [
   'Food & Restaurants',
    'Transportation',
    'Health',
    'Entertainment',
    'Shopping',
    'Others'
  ];
  var _currentitemselected = 'Entertainment';
  final _billamtcon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Enter Bill splitting details'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                child: Column(children: [
              TextFormField(
                style: TextStyle(fontSize: 22),
                decoration: const InputDecoration(
                    icon: const Icon(Icons.monetization_on),
                    labelText: ' Total Amount',
                    labelStyle: TextStyle(fontSize: 18)),
                validator: (val) {
                  Pattern pattern = r'^[1-9]\d*(\.\d+)?$';
                  RegExp regex = new RegExp(pattern);
                  if (!regex.hasMatch(val))
                    return 'Enter a valid number';
                  else
                    return null;
                },
                keyboardType: TextInputType.number,
                controller: _billamtcon,
              ),
              TextFormField(
                style: TextStyle(fontSize: 22),
                decoration: const InputDecoration(
                  icon: const Icon(Icons.group),
                  hintText: 'Enter no.of persons',
                  labelText: 'Friends',
                  labelStyle: TextStyle(fontSize: 18),
                ),
                validator: (val) {
                  Pattern pattern = r'^[1-9]\d*(\.\d+)?$';

                  RegExp regex = new RegExp(pattern);
                  if (!regex.hasMatch(val)) {
                    return 'Enter a valid number';
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.number,
              ),
              DropdownButton<String>(
                items: _categories.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),
                onChanged: (String newValueSelected) {
                  _onDropDownItemSelected(newValueSelected);
                },
                value: _currentitemselected,
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {},
                child: new Text('Submit'),
              )
            ]))));
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentitemselected = newValueSelected;
    });
  }
}
