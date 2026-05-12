import 'package:flutter/material.dart';
import 'competencia_card.dart';

class CompetenciasTabs extends StatefulWidget {
  const CompetenciasTabs({super.key});

  @override
  State<CompetenciasTabs> createState() => _CompetenciasTabsState();
}

class _CompetenciasTabsState extends State<CompetenciasTabs> {
  int selected = 0;

  final tabs = [
    {
      'nome': 'Comunicação',
      'cor': const Color(0xFF2563EB),
      'icon': Icons.people_outline,
    },
    {
      'nome': 'Trabalho',
      'cor': const Color(0xFFE6007A),
      'icon': Icons.favorite_border,
    },
    {
      'nome': 'Organização',
      'cor': const Color(0xFF00C853),
      'icon': Icons.gps_fixed,
    },
    {
      'nome': 'Proatividade',
      'cor': const Color(0xFF9333EA),
      'icon': Icons.trending_up,
    },
    {
      'nome': 'Criatividade',
      'cor': const Color(0xFFFF9800),
      'icon': Icons.lightbulb_outline,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final current = tabs[selected];

    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 24),
            child: Text(
              'Principais Competências',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF111827),
              ),
            ),
          ),

          SizedBox(
            height: 52,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: tabs.length,
              itemBuilder: (context, index) {
                final tab = tabs[index];
                final isSelected = selected == index;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    margin: const EdgeInsets.only(right: 12),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? tab['cor'] as Color
                          : const Color(0xFFF3F4F6),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: isSelected
                          ? [
                        BoxShadow(
                          color:
                          (tab['cor'] as Color).withOpacity(0.25),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ]
                          : [],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          tab['icon'] as IconData,
                          size: 18,
                          color: isSelected
                              ? Colors.white
                              : Colors.black87,
                        ),

                        const SizedBox(width: 8),

                        Text(
                          tab['nome'] as String,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: isSelected
                                ? Colors.white
                                : Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 28),

          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: CompetenciaCard(
              key: ValueKey(current['nome']),
              titulo: current['nome'] as String,
              cor: current['cor'] as Color,
              icon: current['icon'] as IconData,
            ),
          ),
        ],
      ),
    );
  }
}