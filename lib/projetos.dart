import 'package:flutter/material.dart';
import './components/carrossel.dart';
import './components/joguinho.dart';

class Projetos extends StatelessWidget {
  const Projetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFEF9FF),
      appBar: AppBar(
        title: const Text(
          "Interaction Page",
          style: TextStyle(
            color: Color(0XFFD4C1EE),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0XFF736CEF),
      ),
      // Trocamos o Center + Column por um ListView
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ), // Espaçamento interno
        children: [
          const Text(
            "My favs",
            textAlign: TextAlign.center, // Centraliza o texto horizontalmente
            style: TextStyle(
              color: Color(0XFF4B2E85),
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20), // Substitui o 'spacing' da Column

          Carrossel(),

          const Divider(
            color: Color(0XFF736CEF),
            thickness: 1,
            height: 60,
            indent: 20,
            endIndent: 20,
          ),

          const Text(
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
    );
  }
}
