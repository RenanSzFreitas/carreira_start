import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VagaCard extends StatelessWidget {
  final String titulo;
  final String descricao;
  final String link;

  const VagaCard({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.link,
  });

  Future<void> _abrirLink() async {
    final Uri url = Uri.parse(link);

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Não foi possível abrir o link');
    }
  }

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
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            descricao,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 18),

          TextButton.icon(
            onPressed: _abrirLink,
            icon: const Icon(Icons.open_in_new),
            label: const Text('Acessar site'),
          ),
        ],
      ),
    );
  }
}