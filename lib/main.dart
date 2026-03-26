import 'package:flutter/material.dart';
import 'package:avaliacao/contato.dart';
import 'package:avaliacao/projetos.dart';

void main() {
  runApp(const MyMaterialApp());
}

// Classe MaterialApp
class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TelaInicial());
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

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
      body: Center(
        child: Column(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Color(0xFF736CEF),
                ),
                Positioned(
                  bottom: -70,
                  child: Container(
                    padding: EdgeInsets.all(3), // Espessura da borda
                    decoration: BoxDecoration(
                      color: Color(0XFFBAA9F1), // Cor da borda
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 110,
                      backgroundImage: NetworkImage(
                        "https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=768,h=768,fit=crop/mP4XjN2NNkiegqgl/0cbf69ba7532d02b454c015dc7e2afa5-YX4zaq3pjVh0qg08.jpg",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 70),
            Text(
              "Beatriz Feitosa Capelario",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text("Ela/Dela", style: TextStyle(fontSize: 14)),
            SizedBox(height: 25),
            Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0XFFBAA9F1),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                "Olá! Meu nome é Beatriz, tenho 25 anos e sou apaixonada por tecnologia. Atualmente, atuo como Aprendiz de Soluções Digitais na Bosch e curso Desenvolvimento de Sistemas no SENAI Roberto Mange. Este portfólio reúne meus projetos e a evolução da minha trajetória no mundo da programação.",
              ),
            ),
            SizedBox(height: 70),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 25,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0XFFBAA9F1),
                      foregroundColor: Color(0XFFFFFFFF),
                      fixedSize: Size(150, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Contato()),
                      );
                    },
                    child: Text("Contatos"),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0XFFBAA9F1),
                      foregroundColor: Color(0XFFFFFFFF),
                      fixedSize: Size(150, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Projetos()),
                      );
                    },
                    child: Text("Projetos"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Color(0xFF736CEF),
        child: Center(
          child: (Text(
            "© 2026 Beatriz Capelario - Desenvolvido em Flutter",
            style: TextStyle(color: Color(0XFFD4C1EE)),
          )),
        ),
      ),
    );
  }
}
