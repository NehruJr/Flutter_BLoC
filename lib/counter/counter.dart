import 'package:flutter/material.dart';

import 'view/counter_page.dart';

class CounterApplication extends StatelessWidget {
  const CounterApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Bloc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const CounterPage(),
    );
  }
}
