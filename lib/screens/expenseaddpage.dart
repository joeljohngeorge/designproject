import 'package:flutter/material.dart';

class Expenseaddpage extends StatefulWidget {
  @override
  _ExpenseaddpageState createState() => _ExpenseaddpageState();
}

class _ExpenseaddpageState extends State<Expenseaddpage> {
  var _categories = [
    'Finance',
     'Education',
    'Groceries',
    'Food & Restaurants',
    'Transportation',
    'Health',
    'Entertainment',
    'Shopping',
    'Home & Utilities',
    'Electricity Bill',
    'Water Bill',
    'Others'
  ];
  var _currentitemselected = 'Finance';
  final _expamtcon = TextEditingController();
  final _datecon=TextEditingController();
   final formKey = GlobalKey<FormState>(); 

    void _submit() {
     final form = formKey.currentState; 
      if (form.validate()) {
         form.save(); 
          Navigator.pop(context); }}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Enter expense details'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
                child: Column(children: [
              TextFormField(
                style: TextStyle(fontSize: 22),
                decoration: const InputDecoration(
                    icon: const Icon(Icons.monetization_on),
                    labelText: 'Amount',
                    labelStyle: TextStyle(fontSize: 16)),
                validator: (val) {
                  Pattern pattern = r'^[1-9]\d*(\.\d+)?$';
                  RegExp regex = new RegExp(pattern);
                  if (!regex.hasMatch(val))
                    return 'Enter a valid number';
                  else
                    return null;
                },
                keyboardType: TextInputType.number,
                controller: _expamtcon,
              ),
              TextFormField(
                style: TextStyle(fontSize: 22),
                decoration: const InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'Enter date(yyyy-mm-dd)',
                  labelText: 'Date',
                  labelStyle: TextStyle(fontSize: 16),
                ),
                validator: (val) {
                  Pattern pattern =
                      r'^((?:19|20)\d\d)[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])$';
                  RegExp regex = new RegExp(pattern);
                  if (!regex.hasMatch(val)) {
                    return 'Enter a valid date';
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.datetime,
                controller: _datecon,
              
              ),
              SizedBox(height: 10,),
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
                onPressed: () {
                  _submit();
                },
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
