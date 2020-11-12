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
              height: 2000,
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
              ])),
        ));
  }
}
