import 'package:flutter/material.dart';

// ==========================
// CURSOS AREAS SECTION
// ==========================

class _AreaData {
  final String emoji;
  final String title;
  final List<String> items;

  const _AreaData({
    required this.emoji,
    required this.title,
    required this.items,
  });
}

class CursosAreasSection extends StatelessWidget {
  const CursosAreasSection({super.key});

  static const List<_AreaData> _areas = [
    _AreaData(
      emoji: '💻',
      title: 'Informática Básica',
      items: [
        'Pacote Office (Word, Excel, PowerPoint)',
        'Navegação na Internet',
        'E-mail profissional',
        'Digitação',
      ],
    ),
    _AreaData(
      emoji: '🌐',
      title: 'Idiomas',
      items: [
        'Inglês básico/intermediário',
        'Espanhol',
        'Duolingo (app gratuito)',
        'BBC Learning English',
      ],
    ),
    _AreaData(
      emoji: '📈',
      title: 'Desenvolvimento Profissional',
      items: [
        'Comunicação eficaz',
        'Trabalho em equipe',
        'Gestão de tempo',
        'Ética profissional',
      ],
    ),
    _AreaData(
      emoji: '📱',
      title: 'Marketing Digital',
      items: [
        'Redes sociais',
        'Marketing de conteúdo',
        'Google Analytics',
        'SEO básico',
      ],
    ),
    _AreaData(
      emoji: '⚙️',
      title: 'Tecnologia',
      items: [
        'Programação básica (Python, JavaScript)',
        'Design gráfico',
        'Edição de vídeo',
        'Excel avançado',
      ],
    ),
    _AreaData(
      emoji: '📊',
      title: 'Administração',
      items: [
        'Atendimento ao cliente',
        'Logística',
        'Recursos humanos',
        'Gestão financeira',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF9FAFB),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // TÍTULO
          const Text(
            'Áreas de Conhecimento',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 24),

          // GRID DE CARDS (2 por linha)
          ..._buildRows(),
        ],
      ),
    );
  }

  List<Widget> _buildRows() {
    List<Widget> rows = [];

    for (int i = 0; i < _areas.length; i += 2) {
      final left = _areas[i];
      final hasRight = i + 1 < _areas.length;
      final right = hasRight ? _areas[i + 1] : null;

      rows.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _AreaCard(area: left)),
            if (right != null) ...[
              const SizedBox(width: 12),
              Expanded(child: _AreaCard(area: right)),
            ] else
              const Expanded(child: SizedBox()),
          ],
        ),
      );

      rows.add(const SizedBox(height: 12));
    }

    return rows;
  }
}

// ==========================
// CARD DE ÁREA
// ==========================
class _AreaCard extends StatelessWidget {
  final _AreaData area;

  const _AreaCard({required this.area});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[200]!),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // EMOJI
          Text(
            area.emoji,
            style: const TextStyle(fontSize: 28),
          ),

          const SizedBox(height: 8),

          // TÍTULO DA ÁREA
          Text(
            area.title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 10),

          // BULLET POINTS
          ...area.items.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Bullet circular roxo pequeno
                  Container(
                    margin: const EdgeInsets.only(top: 5, right: 8),
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      color: Color(0xFF7232F2),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      item,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[700],
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
