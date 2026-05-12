import 'package:flutter/material.dart';

class AutoavaliacaoSection extends StatefulWidget {
  const AutoavaliacaoSection({super.key});

  @override
  State<AutoavaliacaoSection> createState() =>
      _AutoavaliacaoSectionState();
}

class _AutoavaliacaoSectionState
    extends State<AutoavaliacaoSection> {
  final List<int> respostas = [3, 3, 3, 3, 3];

  final perguntas = [
    'Consigo expressar minhas ideias de forma clara?',
    'Costumo planejar minhas tarefas e cumprir prazos?',
    'Trabalho bem em grupo e respeito opiniões diferentes?',
    'Tomo iniciativa sem esperar que me peçam?',
    'Busco soluções criativas para problemas?',
  ];

  @override
  Widget build(BuildContext context) {
    final media =
        respostas.reduce((a, b) => a + b) / respostas.length;

    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F1FF),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFE2C7FF),
          width: 1.5,
        ),
      ),
      child: Column(
        children: [
          const Text(
            'Autoavaliação de\nCompetências',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
              height: 1.3,
            ),
          ),

          const SizedBox(height: 18),

          const Text(
            'Avalie seu nível atual em cada\ncompetência (1 = preciso melhorar, 5 = muito bom)',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF6B7280),
              height: 1.6,
            ),
          ),

          const SizedBox(height: 30),

          ...List.generate(
            perguntas.length,
                (index) => _buildPergunta(
              pergunta: perguntas[index],
              index: index,
            ),
          ),

          const SizedBox(height: 10),

          _buildResultado(media),
        ],
      ),
    );
  }

  Widget _buildPergunta({
    required String pergunta,
    required int index,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 22),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            pergunta,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF111827),
              height: 1.5,
            ),
          ),

          const SizedBox(height: 20),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: List.generate(5, (i) {
              final numero = i + 1;
              final selecionado =
                  respostas[index] == numero;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    respostas[index] = numero;
                  });
                },
                child: AnimatedContainer(
                  duration:
                  const Duration(milliseconds: 200),
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: selecionado
                        ? const Color(0xFFA020F0)
                        : Colors.white,
                    borderRadius:
                    BorderRadius.circular(14),
                    border: Border.all(
                      color: selecionado
                          ? const Color(0xFFA020F0)
                          : const Color(0xFFD1D5DB),
                      width: 2,
                    ),
                  ),
                  child: Text(
                    '$numero',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: selecionado
                          ? Colors.white
                          : const Color(0xFF111827),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildResultado(double media) {
    String texto;
    Color cor;

    if (media >= 4) {
      texto = 'Excelente! Você já possui boas competências.';
      cor = const Color(0xFF00B63E);
    } else if (media >= 2.5) {
      texto = 'Bom! Continue desenvolvendo suas habilidades.';
      cor = const Color(0xFF2563EB);
    } else {
      texto = 'Há espaço para crescer. Foque no desenvolvimento!';
      cor = const Color(0xFFFF4D00);
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 24,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: cor,
          height: 1.5,
        ),
      ),
    );
  }
}