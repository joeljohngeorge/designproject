import 'package:flutter/material.dart';

class Analysispage extends StatefulWidget {
  @override
  _AnalysispageState createState() => _AnalysispageState();
}

class _AnalysispageState extends State<Analysispage> {
  var _months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sept',
    'Oct',
    'Nov',
    'Dec'
  ];
  var _currentitemselected = 'Jan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text("Analysis & Review",
              style: TextStyle(
                fontSize: 18,
              )),
        )),
        body: SingleChildScrollView(
          child: Container(
            height: 3500,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                DropdownButton<String>(
                  items: _months.map((String dropDownStringItem) {
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
                SizedBox(height: 25),
                Center(
                    child: Text(
                  "Expected amount table",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
                SizedBox(height: 10),
                DataTable(columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Category',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
                    //Sample data
                    rows: <DataRow>[
                      DataRow(cells: [
                        DataCell(Text('Finance')),
                        DataCell(Text('3000')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Education')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Groceries')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Food')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Transportation')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Health')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Entertainment')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Shopping')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Home')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Electricity bill')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Water bill')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Others')),
                        DataCell(Text('0')),
                      ]),
                    ]),
                SizedBox(height: 25),
                Center(
                    child: Text("Actual amount table",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                SizedBox(height: 10),
                DataTable(columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Category',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
                    //Sample data
                    rows: <DataRow>[
                      DataRow(cells: [
                        DataCell(Text('Finance')),
                        DataCell(Text('2000')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Education')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Groceries')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Food')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Transportation')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Health')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Entertainment')),
                        DataCell(Text('300')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Shopping')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Home')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Electricity bill')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Water bill')),
                        DataCell(Text('0')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Others')),
                        DataCell(Text('0')),
                      ]),
                    ]),
                SizedBox(height: 25),
                DataTable(columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Actual balance',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ], rows: <DataRow>[
                  DataRow(cells: [
                    DataCell(Text('27700')),
                  ]),
                ]),
              ],
            ),
          ),
        ));
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentitemselected = newValueSelected;
    });
  }
}


