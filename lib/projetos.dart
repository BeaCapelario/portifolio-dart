import 'package:flutter/material.dart';
import './components/carrossel.dart';
import './components/joguinho.dart';

class Projetos extends StatelessWidget {
  Projetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFEF9FF),
      appBar: AppBar(
        title: Text(
          "Interaction Page",
          style: TextStyle(
            color: Color(0XFFD4C1EE),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0XFF736CEF),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          Text(
            "My favs",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0XFF4B2E85),
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),

          Carrossel(),

          Divider(
            color: Color(0XFF736CEF),
            thickness: 1,
            height: 60,
            indent: 20,
            endIndent: 20,
          ),

          Text(
            "Mini Game",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0XFF4B2E85),
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),

          Joguinho(),
        ],
      ),
      // Adicionado o rodapé aqui:
      bottomNavigationBar: Container(
        height: 60,
        color: Color(0xFF736CEF),
        child: Center(
          child: Text(
            "© 2026 Beatriz Capelario - Desenvolvido em Flutter",
            style: TextStyle(color: Color(0XFFD4C1EE)),
          ),
        ),
      ),
    );
  }
}
