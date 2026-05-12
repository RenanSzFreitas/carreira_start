import 'package:flutter/material.dart';

class CompetenciaCard extends StatelessWidget {
  final String titulo;
  final Color cor;
  final IconData icon;

  const CompetenciaCard({
    super.key,
    required this.titulo,
    required this.cor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final conteudos = _dadosCompetencias[titulo]!;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 14,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 18,
            ),
            decoration: BoxDecoration(
              color: cor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 28,
                ),
                const SizedBox(width: 12),
                Text(
                  titulo,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              children: List.generate(conteudos.length, (index) {
                final item = conteudos[index];

                return Column(
                  children: [
                    _buildItem(
                      titulo: item['titulo']!,
                      descricao: item['descricao']!,
                      dica: item['dica']!,
                    ),

                    if (index != conteudos.length - 1)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 22),
                        child: Divider(
                          color: Colors.grey.shade300,
                          thickness: 1,
                        ),
                      ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem({
    required String titulo,
    required String descricao,
    required String dica,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1F2937),
          ),
        ),

        const SizedBox(height: 10),

        Text(
          descricao,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF6B7280),
            height: 1.5,
          ),
        ),

        const SizedBox(height: 18),

        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFF1F5FF),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text('💡'),
                  SizedBox(width: 8),
                  Text(
                    'Como desenvolver:',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4F46E5),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Text(
                dica,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xFF4F46E5),
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

final Map<String, List<Map<String, String>>> _dadosCompetencias = {
  'Comunicação': [
    {
      'titulo': 'Escuta Ativa',
      'descricao':
      'Prestar atenção genuína ao que os outros dizem',
      'dica':
      'Pratique ouvir sem interromper, faça perguntas para entender melhor',
    },
    {
      'titulo': 'Expressão Clara',
      'descricao':
      'Transmitir ideias de forma compreensível',
      'dica':
      'Participe de apresentações, pratique explicar conceitos para amigos',
    },
    {
      'titulo': 'Escrita Profissional',
      'descricao':
      'Escrever e-mails e mensagens de forma adequada',
      'dica':
      'Leia e-mails profissionais, pratique revisar seus textos',
    },
  ],

  'Trabalho': [
    {
      'titulo': 'Colaboração',
      'descricao':
      'Trabalhar bem com pessoas diferentes',
      'dica':
      'Participe de projetos em grupo, ofereça ajuda aos colegas',
    },
    {
      'titulo': 'Flexibilidade',
      'descricao':
      'Adaptar-se a diferentes estilos e opiniões',
      'dica':
      'Esteja aberto a feedback, experimente diferentes abordagens',
    },
    {
      'titulo': 'Resolução de Conflitos',
      'descricao':
      'Lidar com desentendimentos de forma madura',
      'dica':
      'Mantenha a calma, busque soluções que beneficiem todos',
    },
  ],

  'Organização': [
    {
      'titulo': 'Gestão de Tempo',
      'descricao':
      'Priorizar tarefas e cumprir prazos',
      'dica':
      'Use agenda, liste tarefas por ordem de importância',
    },
    {
      'titulo': 'Planejamento',
      'descricao':
      'Pensar antecipadamente e se preparar',
      'dica':
      'Crie planos para projetos, divida grandes tarefas em etapas',
    },
    {
      'titulo': 'Atenção aos Detalhes',
      'descricao':
      'Perceber e cuidar de pequenos aspectos',
      'dica':
      'Revise seu trabalho, crie checklists',
    },
  ],

  'Proatividade': [
    {
      'titulo': 'Iniciativa',
      'descricao':
      'Agir sem esperar que peçam',
      'dica':
      'Identifique problemas e sugira soluções, ofereça ajuda',
    },
    {
      'titulo': 'Autoaprendizado',
      'descricao':
      'Buscar conhecimento por conta própria',
      'dica':
      'Faça cursos online, pesquise sobre temas de interesse',
    },
    {
      'titulo': 'Persistência',
      'descricao':
      'Não desistir diante de dificuldades',
      'dica':
      'Veja desafios como oportunidades de crescer',
    },
  ],

  'Criatividade': [
    {
      'titulo': 'Pensamento Inovador',
      'descricao':
      'Propor ideias novas e diferentes',
      'dica':
      'Questione o status quo, combine ideias de formas diferentes',
    },
    {
      'titulo': 'Solução de Problemas',
      'descricao':
      'Encontrar respostas para desafios',
      'dica':
      'Analise problemas de vários ângulos, teste diferentes soluções',
    },
    {
      'titulo': 'Adaptabilidade',
      'descricao':
      'Ajustar-se a mudanças rapidamente',
      'dica':
      'Aceite mudanças como parte do processo, seja flexível',
    },
  ],
};