import 'package:flutter/material.dart';

AppBar getHomeAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    actions: [
      const SizedBox(
        width: 16,
      ),
      Image.asset("assets/images/icon.png"),
      const SizedBox(
        width: 10,
      ),
      Align(
          alignment: Alignment.centerRight,
          child: Text(
            'قیمت بروز سکه و ارز',
            style: Theme.of(context).textTheme.headlineLarge,
          )),
      Expanded(
          child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset("assets/images/menu.png"))),
      const SizedBox(
        width: 16,
      ),
    ],
  );
}
