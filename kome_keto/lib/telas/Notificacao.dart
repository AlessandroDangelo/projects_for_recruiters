import 'package:flutter/material.dart';


class Notificacao extends StatefulWidget {
  const Notificacao({super.key});

  @override
  State<Notificacao> createState() => _NotificacaoState();
}

class _NotificacaoState extends State<Notificacao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Notificação",
          style: TextStyle(
            fontSize: 25,
          ),
        )
      ),
    );
  }
}
