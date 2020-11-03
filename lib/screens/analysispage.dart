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
            height: 600,
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
                  style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),
                )),
                SizedBox(height: 10),
                DataTable(columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Category',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                    //Sample data
                    rows: <DataRow>[
                      DataRow(cells: [
                        DataCell(Text('Finance')),
                        DataCell(Text('3000')),
                      ]),
                    ]),
                SizedBox(height: 25),
                 Center(
                    child: Text(
                  "Actual amount table",
                  style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold)
                )),
                SizedBox(height: 10),
                DataTable(columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Category',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                    //Sample data
                    rows: <DataRow>[
                      DataRow(cells: [
                        DataCell(Text('Finance')),
                        DataCell(Text('3500')),
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
