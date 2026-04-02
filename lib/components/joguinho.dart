import 'package:flutter/material.dart';

class Joguinho extends StatefulWidget {
  const Joguinho({super.key});

  @override
  State<Joguinho> createState() => _JoguinhoState();
}

class _JoguinhoState extends State<Joguinho> {
  Color _corAtual = Colors.grey;
  bool _foiAceito = false;

  void _resetarJogo() {
    setState(() {
      _corAtual = Colors.grey;
      _foiAceito = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Draggable<Color>(
          data: Color(0XFFD3FF83),
          feedback: Material(
            color: Colors.transparent,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 163, 104, 252),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.directions_run, color: Colors.white, size: 50),
            ),
          ),
          childWhenDragging: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Color(0XFFD6BBFE),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                "Arraste",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),

        SizedBox(height: 30),

        DragTarget<Color>(
          onWillAcceptWithDetails: (details) => true,
          onAcceptWithDetails: (details) {
            setState(() {
              _corAtual = details.data;
              _foiAceito = true;
            });
          },
          builder: (context, candidateData, rejectedData) {
            return Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: _foiAceito ? _corAtual : Color(0XFFFF8CCF),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: candidateData.isNotEmpty
                      ? Colors.blue
                      : Colors.transparent,
                  width: 3,
                ),
              ),
              child: Center(
                child: Text(
                  _foiAceito ? "Sucesso!" : "Solte aqui",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
        ),

        SizedBox(height: 40),
        ElevatedButton.icon(
          onPressed: _resetarJogo,
          icon: Icon(Icons.refresh),
          label: Text("Resetar Jogo"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0XffACDFFE),
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
        ),
      ],
    );
  }
}
