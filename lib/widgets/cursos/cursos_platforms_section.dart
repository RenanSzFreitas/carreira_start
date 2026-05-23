import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


// ==========================
// CURSOS PLATFORMS SECTION
// Seção "Plataformas Recomendadas":
//  - Título centralizado
//  - Campo de busca
//  - Cards de plataformas (Fundação Bradesco, SENAI, SENAC, Coursera, Google Ateliê, LinkedIn Learning)
// ==========================

// Modelo de dados de uma plataforma
class _PlatformData {
  final String name;
  final String description;
  final List<String> tags;
  final String url;

  const _PlatformData({
    required this.name,
    required this.description,
    required this.tags,
    required this.url,
  });
}

class CursosPlatformsSection extends StatefulWidget {
  const CursosPlatformsSection({super.key});

  @override
  State<CursosPlatformsSection> createState() => _CursosPlatformsSectionState();
}

class _CursosPlatformsSectionState extends State<CursosPlatformsSection> {
  // Lista de todas as plataformas
  final List<_PlatformData> _allPlatforms = const [
    _PlatformData(
      name: 'Fundação Bradesco',
      description:
          'Cursos gratuitos em diversas áreas como informática, administração e desenvolvimento pessoal',
      tags: ['Informática', 'Administração', 'Desenvolvimento'],
      url: 'https://www.ev.org.br',
    ),
    _PlatformData(
      name: 'SENAI',
      description:
          'Cursos técnicos e profissionalizantes, muitos gratuitos através de programas sociais',
      tags: ['Técnico', 'Indústria', 'Tecnologia'],
      url: 'https://www.senai.br',
    ),
    _PlatformData(
      name: 'SENAC',
      description:
          'Capacitação em comércio e serviços com diversos cursos gratuitos',
      tags: ['Comércio', 'Serviços', 'Gestão'],
      url: 'https://www.senac.br',
    ),
    _PlatformData(
      name: 'Coursera',
      description:
          'Cursos de universidades internacionais, muitos com opção de auditoria gratuita',
      tags: ['Tecnologia', 'Negócios', 'Idiomas'],
      url: 'https://www.coursera.org',
    ),
    _PlatformData(
      name: 'Google Ateliê Digital',
      description:
          'Cursos sobre marketing digital, carreira e empreendedorismo',
      tags: ['Marketing', 'Carreira', 'Digital'],
      url: 'https://learndigital.withgoogle.com/atelierdigital-br',
    ),
    _PlatformData(
      name: 'LinkedIn Learning',
      description:
          'Milhares de cursos profissionais (oferece período de teste gratuito)',
      tags: ['Profissional', 'Tecnologia', 'Soft Skills'],
      url: 'https://www.linkedin.com/learning',
    ),
  ];

  // Lista filtrada (começa igual à lista completa)
  List<_PlatformData> _filteredPlatforms = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredPlatforms = _allPlatforms;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // Filtra as plataformas conforme o usuário digita
  void _onSearch(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredPlatforms = _allPlatforms;
      } else {
        final lowerQuery = query.toLowerCase();
        _filteredPlatforms = _allPlatforms.where((p) {
          return p.name.toLowerCase().contains(lowerQuery) ||
              p.description.toLowerCase().contains(lowerQuery) ||
              p.tags.any((tag) => tag.toLowerCase().contains(lowerQuery));
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // TÍTULO
          const Text(
            'Plataformas Recomendadas',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 24),

          // CAMPO DE BUSCA
          TextField(
            controller: _searchController,
            onChanged: _onSearch,
            decoration: InputDecoration(
              hintText: 'Buscar plataforma ou área...',
              hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
              prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
              filled: true,
              fillColor: Colors.white,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey[300]!),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey[300]!),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Color(0xFF7232F2)),
              ),
            ),
          ),

          const SizedBox(height: 24),

          // CARDS DAS PLATAFORMAS
          // Monta os cards em pares (2 por linha) ou individualmente
          ..._buildPlatformCards(),
        ],
      ),
    );
  }

  // Constrói os cards agrupados em linhas de 2 (como no design de grid 2x3)
  // No mobile ficará 1 coluna, para manter legibilidade
  List<Widget> _buildPlatformCards() {
    List<Widget> rows = [];

    for (int i = 0; i < _filteredPlatforms.length; i += 2) {
      final left = _filteredPlatforms[i];
      final hasRight = i + 1 < _filteredPlatforms.length;
      final right = hasRight ? _filteredPlatforms[i + 1] : null;

      rows.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _PlatformCard(platform: left)),
            if (right != null) ...[
              const SizedBox(width: 12),
              Expanded(child: _PlatformCard(platform: right)),
            ] else
              const Expanded(child: SizedBox()), // espaço vazio para alinhar
          ],
        ),
      );

      rows.add(const SizedBox(height: 12));
    }

    // Mensagem quando não há resultados
    if (_filteredPlatforms.isEmpty) {
      rows.add(
        Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            'Nenhuma plataforma encontrada.',
            style: TextStyle(color: Colors.grey[500], fontSize: 14),
          ),
        ),
      );
    }

    return rows;
  }
}

// ==========================
// CARD DE PLATAFORMA
// ==========================
class _PlatformCard extends StatelessWidget {
  final _PlatformData platform;

  const _PlatformCard({required this.platform});

  static const Color _green = Color(0xFF10B981);
  static const Color _greenLight = Color(0xFFD1FAE5);

  Future<void> _openLink() async {
    final Uri url = Uri.parse(platform.url);

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
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[200]!),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // NOME DA PLATAFORMA (verde, negrito)
          Text(
            platform.name,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: _green,
            ),
          ),

          const SizedBox(height: 8),

          // DESCRIÇÃO
          Text(
            platform.description,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
              height: 1.4,
            ),
          ),

          const SizedBox(height: 12),

          // TAGS
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: platform.tags
                .map(
                  (tag) => Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: _greenLight,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      tag,
                      style: const TextStyle(
                        fontSize: 11,
                        color: _green,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),

          const SizedBox(height: 12),

          // LINK "Acessar plataforma"
          GestureDetector(
            onTap: _openLink,
            child: Row(
              children: const [
                Text(
                  'Acessar plataforma',
                  style: TextStyle(
                    fontSize: 13,
                    color: _green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 4),
                Icon(Icons.open_in_new, color: _green, size: 14),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
