import 'package:flutter/material.dart';

class Joguinho extends StatefulWidget {
  const Joguinho({super.key});

  @override
  State<Joguinho> createState() => _JoguinhoState();
}

class _JoguinhoState extends State<Joguinho> {
  Color _corAtual = Colors.grey;
  bool _foiAceito = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Garantindo que o Draggable envie uma Color
        Draggable<Color>(
          data: Colors.blue,
          // O segredo está aqui: o Feedback precisa de 'Material' para renderizar corretamente
          feedback: Material(
            color: Colors.transparent,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.directions_run,
                color: Colors.white,
                size: 50,
              ),
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
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                "Arraste-me",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 30),

        // Garantindo que o DragTarget espere uma Color
        DragTarget<Color>(
          onWillAcceptWithDetails: (details) => true,
          onAcceptWithDetails: (details) {
            setState(() {
              _corAtual = details.data; // Pega a cor que veio do Draggable
              _foiAceito = true;
            });
          },
          builder: (context, candidateData, rejectedData) {
            return Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: _foiAceito ? _corAtual : Colors.red.shade200,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  // Mostra uma borda azul quando o item estiver em cima
                  color: candidateData.isNotEmpty
                      ? Colors.blue
                      : Colors.transparent,
                  width: 3,
                ),
              ),
              child: Center(
                child: Text(
                  _foiAceito ? "Sucesso!" : "Solte aqui",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
