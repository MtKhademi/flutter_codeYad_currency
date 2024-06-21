import 'package:fl001/common/services/date_time_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fl001/common/widgets/snak_bar_custom.dart';

class TableReleadData extends StatelessWidget {
  const TableReleadData({
    super.key,
    required this.onReload,
  });
  final Future Function() onReload;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 232, 232, 232),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
            width: 150,
            child: TextButton.icon(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                      const Color.fromARGB(255, 202, 193, 255))),
              onPressed: () async {
                showSnakBarInfo(context, 'در حال بروز رسانی');
                await onReload();
                showSnakBarSuccess(context, 'بروز رسانی انجام شد');
              },
              label: Text('بروز رسانی',
                  style: Theme.of(context).textTheme.headlineSmall),
              icon: const Icon(
                CupertinoIcons.refresh_bold,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            'آخرین بروز رسانی : ${DateTimeService().TimeToString}',
            style: Theme.of(context).textTheme.headlineSmall,
          )
        ],
      ),
    );
  }
}
