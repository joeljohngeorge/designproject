import 'package:expensemonitor/screens/addbillsplit.dart';
import 'package:flutter/material.dart';

class Billsplitting extends StatefulWidget {
  @override
  _BillsplittingState createState() => _BillsplittingState();
}

class _BillsplittingState extends State<Billsplitting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text("Bill splitting",
            style: TextStyle(
              fontSize: 18,
            )),)
      ),
       floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add) ,
          tooltip: "Split bill",
          onPressed: (){
            Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Billsplitaddpage()),
        );
         }),
       body:DataTable(
      
         columns: const <DataColumn>[
       DataColumn(
         label: Text(
           'Category',
           style: TextStyle(fontStyle: FontStyle.italic),
         ),
       ),
       DataColumn(
         label: Text(
           'Total',
           style: TextStyle(fontStyle: FontStyle.italic),
         ),
       ),
       DataColumn(
         label: Text(
             'Friends',
             style: TextStyle(fontStyle: FontStyle.italic),
           ),
       ),
      
      ], 
      //Expected  data
         rows: const <DataRow> [
         DataRow(cells: [
        DataCell(Text('Entertainment')),
        DataCell(Text('1200')),
        DataCell(Text('4')),
        
         ]),] )
         
    );
      
    
  }
}
