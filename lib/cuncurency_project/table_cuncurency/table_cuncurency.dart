import 'package:fl001/cuncurency_project/services/currency_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fl001/cuncurency_project/models/currency_model.dart';
import 'package:fl001/cuncurency_project/table_cuncurency/table_cuncurency_add.dart';
import 'package:fl001/cuncurency_project/table_cuncurency/table_cuncurency_header.dart';
import 'package:fl001/cuncurency_project/table_cuncurency/table_cuncurency_row.dart';
import 'package:fl001/cuncurency_project/table_cuncurency/table_relead_data.dart';

class TableCuncurency extends StatefulWidget {
  const TableCuncurency({super.key});

  @override
  State<TableCuncurency> createState() => _TableCuncurencyState();
}

class _TableCuncurencyState extends State<TableCuncurency> {
  List<CurrencyModel>? currencyModels;

  Future loadData() async {
    var data = await (CurrencyService()).GetsAsync();
    setState(() {
      currencyModels = data;
    });
  }

  Future<List<CurrencyModel>> GetDataAsync() async {
    return await CurrencyService().GetsAsync();
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TableCuncurencyHeader(),
        const Text('Load set state'),
        SizedBox(
          width: double.infinity,
          height: 300,
          child: currencyModels == null
              ? const Align(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                )
              : ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  // shrinkWrap: true,
                  itemCount: currencyModels!.length,
                  itemBuilder: (context, index) => TableCuncurencyRow(
                    currencyModel: currencyModels![index],
                  ),
                  separatorBuilder: (context, index) {
                    if (index % 4 == 0) return const TableCuncurencyAdd();
                    return const SizedBox.shrink();
                  },
                ),
        ),
        const SizedBox(
          height: 10,
        ),
        // const SizedBox(
        //   height: 10,
        // ),
        // const Text('Load Future Builder'),
        // SizedBox(
        //   height: 380,
        //   child: FutureBuilder(
        //       future: GetDataAsync(),
        //       builder: (context, snapShop) {
        //         if (snapShop.hasData) {
        //           return ListView.separated(
        //             physics: const BouncingScrollPhysics(),
        //             scrollDirection: Axis.vertical,
        //             // shrinkWrap: true,
        //             itemCount: snapShop.data!.length,
        //             itemBuilder: (context, index) => TableCuncurencyRow(
        //               currencyModel: snapShop.data![index],
        //             ),
        //             separatorBuilder: (context, index) {
        //               if (index % 4 == 0) return const TableCuncurencyAdd();
        //               return const SizedBox.shrink();
        //             },
        //           );
        //         } else {
        //           return const Center(
        //             child: CircularProgressIndicator(),
        //           );
        //         }
        //       }),
        // ),
        TableReleadData(
          onReload: () async {
            setState(() {
              currencyModels = null;
            });
            await loadData();
          },
        )
      ],
    );
  }
}
