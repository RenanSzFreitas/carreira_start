import 'package:flutter/material.dart';

// IMPORTS DAS SEÇÕES
import '../widgets/entrevista/entrevista_hero.dart';
import '../widgets/entrevista/common_questions_section.dart';
import '../widgets/entrevista/preparation_checklist_section.dart';
import '../widgets/entrevista/warning_section.dart';
import '../widgets/footer.dart';

// IMPORTS DAS PÁGINAS (Para o Drawer)
import 'curriculo_page.dart';
import 'cursos_page.dart';
import 'oportunidades_page.dart';
import 'competencias_page.dart';

class EntrevistaPage extends StatelessWidget {
  const EntrevistaPage({super.key});

  final Color primaryPurple = const Color(0xFF7232F2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: _buildDrawer(context),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 16,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: primaryPurple,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.wifi_tethering, color: Colors.white, size: 20),
            ),
            const SizedBox(width: 8),
            Text(
              'Carreira Start',
              style: TextStyle(
                color: primaryPurple,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            EntrevistaHero(),
            CommonQuestionsSection(),
            PreparationChecklistSection(),
            WarningSection(),
            Footer(),
          ],
        ),
      ),
    );
  }

  // ==========================
  // DRAWER (MENU)
  // ==========================
  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            // HEADER
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: primaryPurple,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.wifi_tethering, color: Colors.white, size: 20),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Carreira Start',
                        style: TextStyle(
                          color: primaryPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  )
                ],
              ),
            ),

            // MENU
            Expanded(
              child: ListView(
                children: [
                  _drawerItem(
                    icon: Icons.home_outlined,
                    title: 'Início',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pop(context); // Volta para a HomePage
                    },
                  ),
                  _drawerItem(
                    icon: Icons.description_outlined,
                    title: 'Currículo',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const CurriculoPage()));
                    },
                  ),
                  // Item atual destacado (opcional)
                  Container(
                    color: primaryPurple.withOpacity(0.1),
                    child: _drawerItem(
                      icon: Icons.chat_bubble_outline,
                      title: 'Entrevista',
                      color: primaryPurple,
                      onTap: () => Navigator.pop(context),
                    ),
                  ),
                  _drawerItem(
                    icon: Icons.school_outlined,
                    title: 'Cursos',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const CursosPage()));
                    },
                  ),
                  _drawerItem(
                    icon: Icons.work_outline,
                    title: 'Oportunidades',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const OportunidadesPage()));
                    },
                  ),
                  _drawerItem(
                    icon: Icons.radar_outlined,
                    title: 'Competências',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const CompetenciasPage()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ITEM DO MENU
  Widget _drawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? color,
  }) {
    return ListTile(
      leading: Icon(icon, color: color ?? Colors.grey[700]),
      title: Text(title, style: TextStyle(color: color ?? Colors.grey[800], fontWeight: color != null ? FontWeight.bold : FontWeight.normal)),
      onTap: onTap,
    );
  }
}