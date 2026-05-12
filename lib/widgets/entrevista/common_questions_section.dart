import 'package:flutter/material.dart';

class CommonQuestionsSection extends StatefulWidget {
  const CommonQuestionsSection({super.key});

  @override
  State<CommonQuestionsSection> createState() => _CommonQuestionsSectionState();
}

class _CommonQuestionsSectionState extends State<CommonQuestionsSection> {
  int _selectedIndex = 0;

  final List<Map<String, String>> _questions = [
    {
      'question': 'Fale sobre você',
      'hint': 'Foque em aspectos profissionais e acadêmicos. Mencione sua formação, interesses na área e o que você busca. Seja breve e objetivo (1-2 minutos).',
      'example': '"Meu nome é [Nome], tenho 18 anos e estou concluindo o ensino médio. Sempre me interessei por tecnologia e busco uma oportunidade para aplicar meus conhecimentos e desenvolver novas habilidades na área de TI."',
    },
    {
      'question': 'Por que você quer trabalhar aqui?',
      'hint': 'Pesquise sobre a empresa antes. Mencione valores, cultura ou projetos que te interessam. Mostre entusiasmo genuíno.',
      'example': '"Admiro o compromisso da empresa com inovação e desenvolvimento profissional dos colaboradores. Acredito que aqui terei a oportunidade de aprender e crescer na minha carreira."',
    },
    {
      'question': 'Quais são seus pontos fortes?',
      'hint': 'Escolha 2-3 qualidades relevantes para a vaga. Dê exemplos concretos de situações que demonstrem essas qualidades.',
      'example': '"Sou organizado e proativo. No colégio, por exemplo, coordenei um projeto em grupo onde precisei organizar tarefas e prazos, garantindo que entregássemos tudo no prazo."',
    },
    {
      'question': 'Quais são seus pontos fracos?',
      'hint': 'Seja honesto, mas escolha algo que você está trabalhando para melhorar. Mostre autoconsciência e vontade de crescer.',
      'example': '"Às vezes sou muito perfeccionista, o que pode me fazer gastar mais tempo em uma tarefa. Mas estou aprendendo a equilibrar qualidade com eficiência e a estabelecer prioridades."',
    },
    {
      'question': 'Onde você se vê daqui a 5 anos?',
      'hint': 'Demonstre ambição, mas seja realista. Mostre que você pensa no futuro e quer crescer na empresa.',
      'example': '"Espero ter me desenvolvido profissionalmente, assumido mais responsabilidades e contribuído significativamente para a equipe. Quero aprender cada vez mais sobre a área."',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        children: [
          const Text(
            'Perguntas Mais Comuns',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          const SizedBox(height: 40),

          // Layout Responsivo: Row para telas grandes, Column para telas pequenas
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 350, child: _buildMenu()),
                    const SizedBox(width: 32),
                    Expanded(child: _buildContentCard()),
                  ],
                );
              } else {
                return Column(
                  children: [
                    _buildMenu(),
                    const SizedBox(height: 24),
                    _buildContentCard(),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMenu() {
    return Column(
      children: List.generate(_questions.length, (index) {
        final isSelected = index == _selectedIndex;
        return GestureDetector(
          onTap: () => setState(() => _selectedIndex = index),
          child: Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF2563EB) : const Color(0xFFF3F6F9), // Azul ou cinza claro
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                // Círculo numérico
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : const Color(0xFFE2E8F0),
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      color: isSelected ? const Color(0xFF2563EB) : Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    _questions[index]['question']!,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black87,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _buildContentCard() {
    final currentQuestion = _questions[_selectedIndex];

    return Container(
      padding: const EdgeInsets.all(32),
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
            currentQuestion['question']!,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF1E3A8A)), // Azul escuro
          ),
          const SizedBox(height: 24),
          Row(
            children: const [
              Icon(Icons.lightbulb_outline, color: Color(0xFFD97706), size: 20),
              SizedBox(width: 8),
              Text('Como Responder:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87)),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            currentQuestion['hint']!,
            style: const TextStyle(color: Colors.black54, height: 1.5, fontSize: 15),
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0xFFEFF6FF), // Azul bem claro
              borderRadius: BorderRadius.circular(12),
              border: const Border(left: BorderSide(color: Color(0xFF2563EB), width: 4)), // Borda azul à esquerda
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Exemplo de Resposta:', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                const SizedBox(height: 12),
                Text(
                  currentQuestion['example']!,
                  style: const TextStyle(color: Colors.black87, fontStyle: FontStyle.italic, height: 1.5),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}