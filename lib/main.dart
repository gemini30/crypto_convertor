// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'HTTP requests/nomics_api.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.purple,
      ),
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
  String bitcoin = "0",
      binance = "0",
      xrp = "0",
      ethereum = "0",
      tether = "0",
      cardano = "0",
      hex = "0",
      dogecoin = "0";

  final TextEditingController val = TextEditingController(text: "0");

  void Convert() {
    updateCurrencies();
    setState(() {
      bitcoin =
          (int.parse(val.text) / getCurrencyValue("BTC")).toStringAsFixed(5);
      binance =
          (int.parse(val.text) / getCurrencyValue("BNB")).toStringAsFixed(5);
      hex = (int.parse(val.text) / getCurrencyValue("HEX")).toStringAsFixed(5);
      cardano =
          (int.parse(val.text) / getCurrencyValue("ADA")).toStringAsFixed(5);
      ethereum =
          (int.parse(val.text) / getCurrencyValue("ETH")).toStringAsFixed(5);
      tether =
          (int.parse(val.text) / getCurrencyValue("USDT")).toStringAsFixed(5);
      xrp = (int.parse(val.text) / getCurrencyValue("XRP")).toStringAsFixed(5);
    });
  }

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
                '',
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
                DataCell(Text("$bitcoin")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Image.asset("assets/images/ethereum.jpg", height: 45)),
                DataCell(Text('Ethereum')),
                DataCell(Text("$ethereum")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Image.asset("assets/images/tether.png", height: 45)),
                DataCell(Text('Tether')),
                DataCell(Text("$tether")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Image.asset("assets/images/binance.jpg", height: 45)),
                DataCell(Text('Binance')),
                DataCell(Text("$binance")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Image.asset("assets/images/hex.png", height: 45)),
                DataCell(Text('Hex')),
                DataCell(Text("$hex")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Image.asset("assets/images/xrp.png", height: 45)),
                DataCell(Text('XRP')),
                DataCell(Text("$xrp")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Image.asset("assets/images/cardano.png", height: 45)),
                DataCell(Text('Cardano')),
                DataCell(Text("$cardano")),
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
                    controller: val,
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
                      onPressed: Convert),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
