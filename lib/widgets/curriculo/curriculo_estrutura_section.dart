import 'package:flutter/material.dart';

class CurriculoEstruturaSection extends StatelessWidget {
  const CurriculoEstruturaSection({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFF7232F2);

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Título
          const Text(
            'Estrutura do Currículo',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 32),

          // Cards responsivos
          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              _responsiveCard(
                context,
                _EstruturaCard(
                  title: 'Dados Pessoais',
                  titleColor: primaryPurple,
                  items: const [
                    'Nome completo',
                    'Telefone e e-mail profissional',
                    'Cidade e estado',
                    'LinkedIn (opcional, mas recomendado)',
                  ],
                ),
              ),

              _responsiveCard(
                context,
                _EstruturaCard(
                  title: 'Objetivo',
                  titleColor: primaryPurple,
                  items: const [
                    'Seja claro e objetivo (2-3 linhas)',
                    'Mencione a área de interesse',
                    'Destaque seu entusiasmo em aprender',
                  ],
                ),
              ),

              _responsiveCard(
                context,
                _EstruturaCard(
                  title: 'Formação Acadêmica',
                  titleColor: primaryPurple,
                  items: const [
                    'Ensino médio (completo ou em andamento)',
                    'Cursos técnicos ou profissionalizantes',
                    'Data de conclusão ou previsão',
                  ],
                ),
              ),

              _responsiveCard(
                context,
                _EstruturaCard(
                  title: 'Experiências',
                  titleColor: primaryPurple,
                  items: const [
                    'Trabalhos voluntários',
                    'Projetos escolares relevantes',
                    'Estágios ou trabalhos informais',
                    'Atividades extracurriculares',
                  ],
                ),
              ),

              _responsiveCard(
                context,
                _EstruturaCard(
                  title: 'Competências',
                  titleColor: primaryPurple,
                  items: const [
                    'Habilidades técnicas (programas, idiomas)',
                    'Habilidades interpessoais (comunicação, trabalho em equipe)',
                    'Certificações e cursos complementares',
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _responsiveCard(BuildContext context, Widget child) {
    final width = MediaQuery.of(context).size.width;

    double cardWidth;

    if (width < 700) {
      // Mobile
      cardWidth = width - 48;
    } else if (width < 1100) {
      // Tablet
      cardWidth = (width / 2) - 40;
    } else {
      // Desktop
      cardWidth = 320;
    }

    return SizedBox(
      width: cardWidth,
      child: child,
    );
  }
}

// Card individual
class _EstruturaCard extends StatelessWidget {
  final String title;
  final Color titleColor;
  final List<String> items;

  const _EstruturaCard({
    required this.title,
    required this.titleColor,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título do card
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: titleColor,
            ),
          ),

          const SizedBox(height: 20),

          ...items.map(
                (item) => Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Icon(
                      Icons.check_circle_outline,
                      color: Color(0xFF22C55E),
                      size: 20,
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Text(
                      item,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[800],
                        height: 1.5,
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