import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'calendar.dart'; // Certifique-se de que você está importando o arquivo correto onde sua classe Calendar está definida

void main() {
  initializeDateFormatting().then((_) {
    runApp(MaterialApp(
      home: Calendar(),
    ));
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kome Keto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calendar(),
    );
  }
}


