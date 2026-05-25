import 'package:flutter/material.dart';

import 'vaga_card.dart';

class VagasSection extends StatelessWidget {
  const VagasSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const Text(
            'Onde Encontrar Vagas',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 30),

          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: const [
              VagaCard(
                titulo: 'CIEE',
                descricao:
                'Centro de Integração Empresa-Escola para estágio e aprendizagem.',
                link: 'https://portal.ciee.org.br/',
              ),

              VagaCard(
                titulo: 'Nube',
                descricao:
                'Vagas de estágio e trainee em todo o Brasil.',
                link: 'https://www.nube.com.br/',
              ),

              VagaCard(
                titulo: 'LinkedIn',
                descricao:
                'Rede profissional com diversas oportunidades.',
                link: 'https://www.linkedin.com/',
              ),

              VagaCard(
                titulo: 'Vagas.com',
                descricao:
                'Plataforma com filtros para experiência e área.',
                link: 'https://www.vagas.com.br/',
              ),

              VagaCard(
                titulo: 'Gupy',
                descricao:
                'A plataforma de IA nº1 para contratar talentos.',
                link: 'https://www.gupy.io/',
              ),

              VagaCard(
                titulo: 'InfoJobs',
                descricao:
                'Portal com vagas para todos os níveis, incluindo primeiro emprego.',
                link: 'https://www.infojobs.com.br/',
              ),
            ],
          ),
        ],
      ),
    );
  }
}