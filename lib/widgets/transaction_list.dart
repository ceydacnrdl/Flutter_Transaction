import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaciton.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  const TransactionList(this.transactions, {Key,key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        // yaptığımımz şeyleri listview içine aldık. builder : dinamik hale getirir.
        itemBuilder: (ctx, index) {
          return Card(
              child: Row(
            children: <Widget>[
              Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 136, 26, 26))),
                  padding: const EdgeInsets.all(10),
                  child: Text('\$${transactions[index].amount}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple))),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                /*sayfanın yukarı kısmından eklemeye başla*/
                children: [
                  Text(transactions[index].title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(
                    DateFormat('dd/MM/yyyy').format(transactions[index].date),
                    /*tarihi formatladım.*/
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ));
        },
        itemCount: transactions.length, // kaç tane item olduğunu sayar.
      ),
    );
  }
}
