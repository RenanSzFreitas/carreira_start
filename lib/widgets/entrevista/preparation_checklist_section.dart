import 'package:flutter/material.dart';

class PreparationChecklistSection extends StatelessWidget {
  const PreparationChecklistSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        children: [
          const Text(
            'Checklist de Preparação',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: [
              _buildChecklistCard(
                title: 'Antes da Entrevista',
                titleColor: const Color(0xFF2563EB), // Azul
                items: [
                  'Pesquise sobre a empresa (site, redes sociais, notícias)',
                  'Releia a descrição da vaga',
                  'Prepare respostas para perguntas comuns',
                  'Separe sua roupa com antecedência (vista-se profissionalmente)',
                  'Chegue 10-15 minutos mais cedo',
                  'Tenha cópias do seu currículo',
                ],
              ),
              _buildChecklistCard(
                title: 'Durante a Entrevista',
                titleColor: const Color(0xFF2563EB),
                items: [
                  'Cumprimente com um aperto de mão firme',
                  'Mantenha contato visual',
                  'Seja educado e cortês com todos',
                  'Ouça atentamente as perguntas',
                  'Fale de forma clara e pausada',
                  'Demonstre entusiasmo e interesse',
                ],
              ),
              _buildChecklistCard(
                title: 'Depois da Entrevista',
                titleColor: const Color(0xFF2563EB),
                items: [
                  'Agradeça pela oportunidade',
                  'Envie um e-mail de agradecimento em até 24h',
                  'Reflita sobre como foi a entrevista',
                  'Anote perguntas que teve dificuldade',
                  'Seja paciente aguardando o retorno',
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChecklistCard({required String title, required Color titleColor, required List<String> items}) {
    return Container(
      width: 340, // Largura fixa para manter o padrão visual de grid
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: titleColor),
          ),
          const SizedBox(height: 24),
          ...items.map((item) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.check_circle_outline, color: Colors.green, size: 20),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    item,
                    style: const TextStyle(color: Colors.black87, fontSize: 14, height: 1.4),
                  ),
                ),
              ],
            ),
          )).toList(),
        ],
      ),
    );
  }
}