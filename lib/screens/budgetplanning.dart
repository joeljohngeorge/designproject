import 'package:flutter/material.dart';

class Budgetplanning extends StatefulWidget {
  @override
  _BudgetplanningState createState() => _BudgetplanningState();
}

class _BudgetplanningState extends State<Budgetplanning> {
  final _incomecon = TextEditingController();
  final _percentagecon = TextEditingController();
  var _categories = [
    'Finance',
    'Education',
    'Groceries',
    'Food & Restaurants',
    'Health',
    'Entertainment',
    'Shopping',
    'Home & Utilities',
    'Electricity Bill',
    'Water Bill',
    'Others'
  ];
  var _currentitemselected = 'Finance';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("Budget Planning",
            style: TextStyle(
              fontSize: 18,
            )),
      )),
      body: SingleChildScrollView(
              child: Container(
          height: 600,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Column(children: [
                TextFormField(
                  style: TextStyle(fontSize: 22),
                  decoration: const InputDecoration(
                      icon: const Icon(Icons.monetization_on),
                      labelText: 'Enter income',
                      labelStyle: TextStyle(fontSize: 16)),
                  keyboardType: TextInputType.number,
                  controller: _incomecon,
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
                TextFormField(
                  style: TextStyle(fontSize: 22),
                  decoration: const InputDecoration(
                      
                      labelText: 'Enter estimated percentage',
                      labelStyle: TextStyle(fontSize: 16)),
                  controller: _percentagecon,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 30),
                RaisedButton(
                  onPressed: () {},
                  child: new Text('Submit'),
                ),
                SizedBox(height: 30),
                DataTable(columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Category',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Percentage(%)',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                    //Sample data
                    rows: <DataRow>[
                      DataRow(cells: [
                        DataCell(Text('Finance')),
                        DataCell(Text('10')),
                      ]),
                    ]),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentitemselected = newValueSelected;
    });
  }
}
