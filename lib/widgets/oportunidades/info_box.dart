import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  final String titulo;
  final Color tituloColor;
  final List<String> itens;

  const InfoBox({
    super.key,
    required this.titulo,
    required this.tituloColor,
    required this.itens,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 550,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: TextStyle(
              color: tituloColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          ...itens.map(
                (item) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                  ),

                  const SizedBox(width: 10),

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