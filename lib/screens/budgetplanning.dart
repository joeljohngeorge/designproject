import 'package:expensemonitor/screens/addestimates.dart';
import 'package:expensemonitor/screens/addincome.dart';
import 'package:flutter/material.dart';

class Budgetplanning extends StatefulWidget {
  @override
  _BudgetplanningState createState() => _BudgetplanningState();
}

class _BudgetplanningState extends State<Budgetplanning> {
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
              height: 3500,
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                SizedBox(height: 30),
                Center(
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Incomeaddpage()),
                        );
                      },
                      child: Text("Add income")),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Estimateaddpage()),
                        );
                      },
                      child: Text("Add estimates")),
                ),
                SizedBox(
                  height: 30,
                ),
                DataTable(columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Income',
                      style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),
                    ),
                  ),
                ], rows: <DataRow>[
                  DataRow(cells: [
                    DataCell(Text('30000')),
                  ]),
                ]),
                 SizedBox(
                  height: 30,
                ),
                 DataTable(columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Expected balance',
                      style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),
                    ),
                  ),
                ], rows: <DataRow>[
                  DataRow(cells: [
                    DataCell(Text('25500')),
                  ]),
                ]),
                 SizedBox(
                  height: 30,
                ),
                 DataTable(columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Savings',
                      style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),
                    ),
                  ),
                ], rows: <DataRow>[
                  DataRow(cells: [
                    DataCell(Text('3000')),
                  ]),
                ]),
                 SizedBox(
                  height: 30,
                ),
                DataTable(columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Category',
                      style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Percentage(%)',
                      style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),
                    ),
                  ),
                ],
                    //Sample data
                    rows: <DataRow>[
                      DataRow(cells: [
                        DataCell(Text('Finance')),
                        DataCell(Text('10')),
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
                        DataCell(Text('5')),
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
                       DataRow(cells: [
                        DataCell(Text('Savings')),
                        DataCell(Text('10')),
                      ]),
                    ]),
              ])),
        ));
  }
}
