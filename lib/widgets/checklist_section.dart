import 'package:flutter/material.dart';

class ChecklistSection extends StatelessWidget {
  const ChecklistSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: const Column(
        children: [
          CheckItem(text: 'Conteúdo focado em jovens de 16 a 20 anos'),
          SizedBox(height: 12),
          CheckItem(text: 'Dicas práticas e aplicáveis'),
          SizedBox(height: 12),
          CheckItem(text: 'Orientação passo a passo'),
          SizedBox(height: 12),
          CheckItem(text: '100% gratuito'),
        ],
      ),
    );
  }
}

class CheckItem extends StatelessWidget {
  final String text;

  const CheckItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check_circle_outline,
          color: Colors.green,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}