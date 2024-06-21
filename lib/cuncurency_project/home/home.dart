import 'package:fl001/cuncurency_project/home/app_bar_custom.dart';
import 'package:fl001/cuncurency_project/table_cuncurency/table_cuncurency.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      appBar: getHomeAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/questionIcon.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'نرخ آزاد ارز چیست ؟ ',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'در این باره باید دقت کرد که نرخ ارز در تمام حالت ها متفات است و میتواند دجارم شکل کند خرید و فروش آنلاین رو و تمام دوستان به چیزی نیاز دارن که بتونن بهش اعتماد کنند و داد های سعی رو نشون بدن',
                style: Theme.of(context).textTheme.bodyMedium,
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(
                height: 20,
              ),
              const TableCuncurency(),
            ],
          ),
        ),
      ),
    );
  }
}
