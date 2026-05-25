import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CTASection extends StatelessWidget {
  const CTASection({super.key});

  Future<void> _abrirCiee() async {
    final Uri url = Uri.parse(
      'https://portal.ciee.org.br/',
    );

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception(
        'Não foi possível abrir o site',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFFF512F),
            Color(0xFFDD2476),
          ],
        ),
      ),
      child: Column(
        children: [
          const Text(
            'Pronto para Começar?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          const Text(
            'Cadastre-se nas plataformas, prepare seu currículo e comece a se candidatar hoje mesmo!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 24),

          ElevatedButton.icon(
            onPressed: _abrirCiee,

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black87,
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
                vertical: 18,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),

            icon: const Icon(Icons.open_in_new),

            label: const Text(
              'Buscar vagas no CIEE',
            ),
          ),
        ],
      ),
    );
  }
}