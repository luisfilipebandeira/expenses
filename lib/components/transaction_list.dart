import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transacation.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transacations;

  const TransactionList({
     Key? key,
     required this.transacations
    }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
                children: transacations.map((tr) {
                  return Card(
                       child: Row(
                         children: [
                           Container(
                             margin: const EdgeInsets.symmetric(
                               horizontal: 15,
                               vertical: 10
                             ),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 color: Colors.purple,
                                 width: 2
                               )
                             ),
                             padding: EdgeInsets.all(10),
                             child: Text(
                              'R\$ ${tr.value.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple
                              ),
                             ),
                           ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(
                                tr.title,
                                 style: const TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold
                                 ),
                                ),
                               Text(
                                 DateFormat('d MMM y').format(tr.date),
                                 style: const TextStyle(
                                   color: Colors.grey
                                 ),
                                ),
                             ],
                           )
                         ],
                       ),
                     );  
                }).toList()
              ),
      ),
    );
  }
}