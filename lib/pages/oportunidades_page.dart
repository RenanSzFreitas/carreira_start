import 'package:flutter/material.dart';

class OportunidadesPage extends StatelessWidget {
  const OportunidadesPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFF7232F2);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Oportunidades'),
        backgroundColor: primaryPurple,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _jobCard(
            title: 'Jovem Aprendiz - Administrativo',
            company: 'Empresa XPTO',
            location: 'Bauru - SP',
            type: 'Aprendiz',
          ),

          const SizedBox(height: 16),

          _jobCard(
            title: 'Estágio em TI',
            company: 'Tech Solutions',
            location: 'Remoto',
            type: 'Estágio',
          ),

          const SizedBox(height: 16),

          _jobCard(
            title: 'Atendente - Primeiro Emprego',
            company: 'Loja Centro',
            location: 'Bauru - SP',
            type: 'CLT',
          ),
        ],
      ),
    );
  }

  Widget _jobCard({
    required String title,
    required String company,
    required String location,
    required String type,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TIPO (badge)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.deepPurple.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              type,
              style: const TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),

          const SizedBox(height: 12),

          // TÍTULO
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          // EMPRESA
          Text(
            company,
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),

          const SizedBox(height: 4),

          // LOCAL
          Text(
            location,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 13,
            ),
          ),

          const SizedBox(height: 12),

          // BOTÃO
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // aqui você pode abrir detalhes
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Ver detalhes'),
            ),
          )
        ],
      ),
    );
  }
}