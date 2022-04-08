// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cryptocurrency Convertor",
      home: Scaffold(
        appBar: AppBar(title: const Text("Cryptocurrency Convertor")),
        body: MyConvertor(),
      ),
    );
  }
}

class MyConvertor extends StatefulWidget {
  const MyConvertor({Key? key}) : super(key: key);

  @override
  State<MyConvertor> createState() => _MyConvertorState();
}

class _MyConvertorState extends State<MyConvertor> {
  @override
  Widget build(BuildContext context) {
    return DataTable(columns: [
      DataColumn(
          label: Container(
        width: 80,
        child: Text(
          'Currency Symbol',
        ),
      )),
      DataColumn(
          label: Container(
        width: 80,
        child: Text(
          'Crypto Name',
        ),
      )),
      DataColumn(
          label: Container(
        width: 80,
        child: Text(
          'Equivalent',
        ),
      ))
    ], rows: [
      DataRow(
        cells: [
          DataCell(Text('Bitcoin img')),
          DataCell(Text('Bitcoin')),
          DataCell(Text('___')),
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text('Ethereum img')),
          DataCell(Text('Ethereum')),
          DataCell(Text('___')),
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text('Tether img')),
          DataCell(Text('Tether')),
          DataCell(Text('___')),
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text('Binance img')),
          DataCell(Text('Binance')),
          DataCell(Text('___')),
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text('Hex img')),
          DataCell(Text('Hex')),
          DataCell(Text('___')),
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text('XRP img')),
          DataCell(Text('XRP')),
          DataCell(Text('___')),
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text('Cardano img')),
          DataCell(Text('Cardano')),
          DataCell(Text('___')),
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text('Cardano img')),
          DataCell(Text('Cardano')),
          DataCell(Text('___')),
        ],
      ),
      DataRow(cells: [
        DataCell(Text('rupee img')),
        DataCell(
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Enter Amount in INR",
            ),
          ),
        ),
        DataCell(
          ElevatedButton(
              child: Text(
                "Calculate",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () => {}),
        ),
      ]),
    ]);
  }
}
