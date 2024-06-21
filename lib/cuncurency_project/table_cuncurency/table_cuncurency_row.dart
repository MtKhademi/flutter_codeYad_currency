import 'package:flutter/material.dart';

import 'package:fl001/cuncurency_project/models/currency_model.dart';

class TableCuncurencyRow extends StatelessWidget {
  TableCuncurencyRow({
    Key? key,
    required this.currencyModel,
  }) : super(key: key);
  final CurrencyModel currencyModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            blurRadius: 1.0,
            color: Colors.grey,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            currencyModel.title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            currencyModel.price,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            children: [
              Text(
                currencyModel.change,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color:
                        currencyModel.Arise ? Colors.green : Colors.redAccent),
              ),
              const SizedBox(
                width: 3,
              ),
              Icon(
                currencyModel.Arise ? Icons.arrow_upward : Icons.arrow_downward,
                color: currencyModel.Arise ? Colors.green : Colors.redAccent,
              ),
            ],
          )
        ],
      ),
    );
  }
}
