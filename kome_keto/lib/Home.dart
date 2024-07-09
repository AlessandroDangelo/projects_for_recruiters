import 'package:flutter/material.dart';
import 'package:kome_keto/telas/Calendar.dart';
import 'package:kome_keto/telas/Add_New_Event.dart';
import 'package:kome_keto/telas/Conta.dart';
import 'package:kome_keto/telas/Cronograma.dart';
import 'package:kome_keto/telas/Notificacao.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {

    List telas = [
      Calendar(),
      Cronograma(),
      Add_New_Event(),
      Notificacao(),
      Conta()
    ];

    return Scaffold(
     appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
          opacity: 1
        ),
        backgroundColor: Colors.black,
        title: Text(
          "Calendário Kome Keto",
          style: TextStyle(color: Colors.white),
          ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice){
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
            //backgroundColor: Colors.orange,
            label: "Calendário",
            icon: Icon(Icons.calendar_month)
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.red,
            label: "Cronograma",
            icon: Icon(Icons.watch)
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.blue,
            label: "Adiciona evento",
            icon: Icon(Icons.add)
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.green,
            label: "Notificação",
            icon: Icon(Icons.notifications)
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.green,
            label: "Conta",
            icon: Icon(Icons.login)
          ),
        ],
      ),
    );
  }
}