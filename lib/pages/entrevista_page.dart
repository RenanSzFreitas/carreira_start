import 'package:flutter/material.dart';

class EntrevistaPage extends StatefulWidget {
  const EntrevistaPage({super.key});

  @override
  State<EntrevistaPage> createState() => _EntrevistaPageState();
}

class _EntrevistaPageState extends State<EntrevistaPage> {
  int currentQuestion = 0;

  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Fale um pouco sobre você',
      'options': [
        'Resposta simples e direta',
        'Falar muito sem foco',
        'Não saber responder'
      ]
    },
    {
      'question': 'Por que você quer trabalhar aqui?',
      'options': [
        'Mostrar interesse na empresa',
        'Falar só de dinheiro',
        'Responder qualquer coisa'
      ]
    },
    {
      'question': 'Quais são seus pontos fortes?',
      'options': [
        'Falar habilidades reais',
        'Inventar coisas',
        'Dizer que não tem'
      ]
    },
  ];

  void nextQuestion() {
    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    } else {
      _showFinishedDialog();
    }
  }

  void _showFinishedDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Finalizado'),
        content: const Text('Você completou a simulação!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                currentQuestion = 0;
              });
            },
            child: const Text('Recomeçar'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFF7232F2);

    final question = questions[currentQuestion];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Simulação de Entrevista'),
        backgroundColor: primaryPurple,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // PROGRESSO
            Text(
              'Pergunta ${currentQuestion + 1} de ${questions.length}',
              style: TextStyle(color: Colors.grey[600]),
            ),

            const SizedBox(height: 16),

            // PERGUNTA
            Text(
              question['question'],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 24),

            // RESPOSTAS
            ...List.generate(question['options'].length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    elevation: 2,
                    padding: const EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: nextQuestion,
                  child: Row(
                    children: [
                      const Icon(Icons.circle_outlined),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(question['options'][index]),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}