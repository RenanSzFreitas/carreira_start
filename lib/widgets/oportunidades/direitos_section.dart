import 'package:flutter/material.dart';

import 'info_box.dart';

class DireitosSection extends StatelessWidget {
  const DireitosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: [
          InfoBox(
            titulo: 'Seus Direitos',
            tituloColor: Colors.green.shade700,
            itens: const [
              'Carteira assinada',
              'Férias proporcionais',
              '13° salário',
              'Vale-transporte',
              'Ambiente respeitoso',
            ],
          ),

          InfoBox(
            titulo: 'Suas Responsabilidades',
            tituloColor: Colors.blue.shade700,
            itens: const [
              'Pontualidade',
              'Cumprir tarefas',
              'Respeitar colegas',
              'Vestir-se adequadamente',
              'Buscar aprendizado',
            ],
          ),
        ],
      ),
    );
  }
}