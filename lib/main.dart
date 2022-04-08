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
    final double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          DataTable(columnSpacing: 0, columns: [
            DataColumn(
                label: Container(
              width: width * .25,
              child: Text(
                'Logo',
              ),
            )),
            DataColumn(
                label: Container(
              width: width * .35,
              child: Text(
                'Crypto Name',
              ),
            )),
            DataColumn(
                label: Container(
              width: width * .35,
              child: Text(
                'Equivalent',
              ),
            ))
          ], rows: [
            DataRow(
              cells: [
                DataCell(Image.asset("assets/images/bitcoin.png", height: 45)),
                DataCell(Text('Bitcoin')),
                DataCell(Text('___')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Image.asset("assets/images/ethereum.jpg", height: 45)),
                DataCell(Text('Ethereum')),
                DataCell(Text('___')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Image.asset("assets/images/tether.png", height: 45)),
                DataCell(Text('Tether')),
                DataCell(Text('___')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Image.asset("assets/images/binance.jpg", height: 45)),
                DataCell(Text('Binance')),
                DataCell(Text('___')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Image.asset("assets/images/hex.png", height: 45)),
                DataCell(Text('Hex')),
                DataCell(Text('___')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Image.asset("assets/images/xrp.png", height: 45)),
                DataCell(Text('XRP')),
                DataCell(Text('___')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Image.asset("assets/images/cardano.png", height: 45)),
                DataCell(Text('Cardano')),
                DataCell(Text('___')),
              ],
            ),
          ]),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter Amount in INR",
                    ),
                  ),
                  ElevatedButton(
                      child: Text(
                        "Calculate",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () => {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    // DataRow(cells: [
    //   DataCell(Text('rupee img')),
    //   DataCell(
    //     TextField(
    //       keyboardType: TextInputType.number,
    //       decoration: InputDecoration(
    //         hintText: "Enter Amount in INR",
    //       ),
    //     ),
    //   ),
    //   DataCell(
    //     ElevatedButton(
    //         child: Text(
    //           "Calculate",
    //           style: TextStyle(fontSize: 20),
    //         ),
    //         onPressed: () => {}),
    //   ),
    // ]),
  }
}
