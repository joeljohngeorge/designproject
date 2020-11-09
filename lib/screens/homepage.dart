import 'package:expensemonitor/screens/analysispage.dart';
import 'package:expensemonitor/screens/billsplitting.dart';
import 'package:expensemonitor/screens/budgetplanning.dart';
import 'package:expensemonitor/screens/expenseaddpage.dart';

import 'package:flutter/material.dart';

void main() => runApp(Homepage());

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(
              child: Text("Expense Monitor",
                  style: TextStyle(
                    fontSize: 18,
                  ))),
        ),
        drawer: Navdrawer(),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            tooltip: "Add expense",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Expenseaddpage()),
              );
            }),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 2000,
                width: MediaQuery.of(context).size.width,
                child: DataTable(columns: <DataColumn>[
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
                  DataColumn(
                    label: Text(
                      'Date',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                    //Sample data
                    rows: <DataRow>[
                      DataRow(cells: [
                        DataCell(Text('Finance')),
                        DataCell(Text('3000')),
                        DataCell(Text('2020-10-31')),
                      ]),
                    ]),
              ),
            ],
          ),
        ));
  }
}

class Navdrawer extends StatefulWidget {
  @override
  _NavdrawerState createState() => _NavdrawerState();
}

class _NavdrawerState extends State<Navdrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
          child: Center(
            child: Text(
              'Expense Monitor',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          decoration: BoxDecoration(color: Colors.blue),
        ),
        ListTile(
          title: Text("Home"),
          onTap: () => {Navigator.of(context).pop()},
        ),
        ListTile(
          title: Text("Budget Planning"),
          onTap: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Budgetplanning()))
          },
        ),
        ListTile(
          title: Text("Analysis & Review"),
          onTap: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Analysispage()))
          },
        ),
        ListTile(
          title: Text("Bill splitting"),
          onTap: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Billsplitting()))
          },
        ),
        ListTile(
          title: Text("Log out"),
          onTap: () => {},
        ),
      ]),
    );
  }
}
