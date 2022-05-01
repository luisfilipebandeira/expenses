import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transacation.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transacations;
  final void Function(String) onRemove;

  const TransactionList({
     Key? key,
     required this.transacations,
     required this.onRemove
    }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      child: transacations.isEmpty ? Column(
        children: [
          SizedBox(height: 20),
          Text('Nenhuma transação cadastrada'),
          SizedBox(height: 20),
          Container(
            height: 200,
            child: Image.asset(
              'assets/images/waiting.png',
              fit: BoxFit.cover,  
            ),
          )
        ],
      ) :  ListView.builder(
        itemCount: transacations.length,
        itemBuilder: (ctx, index) {
          final tr = transacations[index];
          return Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 5
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                radius: 30, 
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: FittedBox(
                    child: Text('R\$${tr.value}')
                    ),
                ),
              ),
              title: Text(
                tr.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text(
                DateFormat('d MMM y').format(tr.date)
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red,
                onPressed: () => onRemove(tr.id),
              ),
            ),
          );
        },
      ),
    );
  }
}