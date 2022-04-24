import 'package:expenses/components/transaction_user.dart';

import './models/transacation.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

main() => runApp((const ExpensesApp()));

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados pessoais'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  const [
            SizedBox(
              child: Card(
                color: Colors.blue,
                child: Text('Grafico'),
              ),
            ),
            TransactionUser()
          ],
        ),
      )
    );
  }
}