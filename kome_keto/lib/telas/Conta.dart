import 'package:flutter/material.dart';

class Conta extends StatefulWidget {
  const Conta({super.key});

  @override
  State<Conta> createState() => _ContaState();
}

class _ContaState extends State<Conta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Conta",
          style: TextStyle(
            fontSize: 25,
          ),
        )
      ),
    );
  }
}
