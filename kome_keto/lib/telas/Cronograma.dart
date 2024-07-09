import 'package:flutter/material.dart';

class Cronograma extends StatefulWidget {
  const Cronograma({super.key});

  @override
  State<Cronograma> createState() => _CronogramaState();
}

class _CronogramaState extends State<Cronograma> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Cronograma",
          style: TextStyle(
            fontSize: 25,
          ),
        )
      ),
    );
  }
}