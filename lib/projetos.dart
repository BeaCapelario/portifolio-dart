import 'package:flutter/material.dart';

class Projetos extends StatelessWidget {
  const Projetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFEF9FF),
      appBar: AppBar(
        title: Text(
          "Bea's Portifolio",
          style: TextStyle(
            color: Color(0XFFD4C1EE),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0XFF736CEF),
      ),
    );
  }
}
