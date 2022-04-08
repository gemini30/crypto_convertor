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
  int maxFractionDigits = 5;

  final TextEditingController t1 = TextEditingController(text: "0");

  void doCalculate() {
    updateCurrencies();
    setState(() {
      bitcoin = (int.parse(t1.text) / getCurrencyValue("BTC"))
          .toStringAsFixed(maxFractionDigits);
      binance = (int.parse(t1.text) / getCurrencyValue("BNB"))
          .toStringAsFixed(maxFractionDigits);
      hex = (int.parse(t1.text) / getCurrencyValue("HEX"))
          .toStringAsFixed(maxFractionDigits);
      cardano = (int.parse(t1.text) / getCurrencyValue("ADA"))
          .toStringAsFixed(maxFractionDigits);
      ethereum = (int.parse(t1.text) / getCurrencyValue("ETH"))
          .toStringAsFixed(maxFractionDigits);
      tether = (int.parse(t1.text) / getCurrencyValue("USDT"))
          .toStringAsFixed(maxFractionDigits);
      xrp = (int.parse(t1.text) / getCurrencyValue("XRP"))
          .toStringAsFixed(maxFractionDigits);
      dogecoin = (int.parse(t1.text) / getCurrencyValue("DOGE"))
          .toStringAsFixed(maxFractionDigits);
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
                    controller: t1,
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
                      onPressed: doCalculate),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
