import 'package:flutter/material.dart';

class ProgramaCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String titulo;
  final String descricao;
  final List<String> itens;

  const ProgramaCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.titulo,
    required this.descricao,
    required this.itens,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.12),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: iconColor),
          ),

          const SizedBox(height: 18),

          Text(
            titulo,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            descricao,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 18),

          ...itens.map(
                (item) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 18,
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: Text(item),
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