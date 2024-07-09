import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:kome_keto/Home.dart';

void main() {
  initializeDateFormatting().then((_) {
    runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}


