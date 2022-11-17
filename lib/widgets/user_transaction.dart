import 'package:flutter/material.dart';
import 'package:real_app2/widgets/transaction_list.dart';
import '../models/transaciton.dart';
import 'new_transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key,key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _usertransactions = [
    Transaction(id: 't1', title: 'Shoes', amount: 69.72, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Souveniers', amount: 16.22, date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    //class ın içinde olduğu içinde başında _ var.
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());
    setState(() {
      //usertransaction ın güncellenmesi için
      _usertransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_usertransactions)
      ],
    );
  }
}
