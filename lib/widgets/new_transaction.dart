import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  String? titleInput;
  String? amountInput;
  final titleController =
      TextEditingController(); //text te her hangi bir değişiklik olduğunda tetiklenir.
  final amountController = TextEditingController();
  NewTransaction(this.addTx, {super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5, //gölgelendirme
        child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                      decoration: const InputDecoration(labelText: 'Title'),
                      controller: titleController,
                      onChanged: (val) {
                        titleInput = val;
                        print(titleInput);
                      }),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                  ),
                  TextButton(
                      onPressed: () {
                        addTx(titleController.text,
                            double.parse(amountController.text));
                      },
                      child: const Text('Add Transaction'))
                ])));
  }
}
