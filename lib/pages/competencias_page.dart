import 'package:flutter/material.dart';

class CompetenciasPage extends StatefulWidget {
  const CompetenciasPage({super.key});

  @override
  State<CompetenciasPage> createState() => _CompetenciasPageState();
}

class _CompetenciasPageState extends State<CompetenciasPage> {
  final List<Map<String, dynamic>> competencias = [
    {'nome': 'Comunicação', 'nivel': 0.6},
    {'nome': 'Trabalho em equipe', 'nivel': 0.8},
    {'nome': 'Proatividade', 'nivel': 0.5},
    {'nome': 'Organização', 'nivel': 0.7},
    {'nome': 'Responsabilidade', 'nivel': 0.9},
  ];

  void aumentarNivel(int index) {
    setState(() {
      if (competencias[index]['nivel'] < 1.0) {
        competencias[index]['nivel'] += 0.1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFF7232F2);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Competências'),
        backgroundColor: primaryPurple,
        foregroundColor: Colors.white,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: competencias.length,
        itemBuilder: (context, index) {
          final item = competencias[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOME
                  Text(
                    item['nome'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // BARRA DE PROGRESSO
                  LinearProgressIndicator(
                    value: item['nivel'],
                    minHeight: 8,
                    borderRadius: BorderRadius.circular(8),
                    backgroundColor: Colors.grey[200],
                    valueColor: const AlwaysStoppedAnimation(primaryPurple),
                  ),

                  const SizedBox(height: 8),

                  // TEXTO DE PORCENTAGEM
                  Text(
                    '${(item['nivel'] * 100).toInt()}% desenvolvido',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // BOTÃO
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () => aumentarNivel(index),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Evoluir'),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}