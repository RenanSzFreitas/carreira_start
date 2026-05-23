import 'package:flutter/material.dart';

// IMPORTS DOS WIDGETS DA PÁGINA DE CURSOS
import '../widgets/cursos/cursos_hero_section.dart';
import '../widgets/cursos/cursos_why_section.dart';
import '../widgets/cursos/cursos_platforms_section.dart';
import '../widgets/cursos/cursos_areas_section.dart';
import '../widgets/cursos/cursos_tips_section.dart';
import '../widgets/footer.dart';

import 'home_page.dart';
import 'curriculo_page.dart';
import 'entrevista_page.dart';
import 'oportunidades_page.dart';
import 'competencias_page.dart';

class CursosPage extends StatelessWidget {
  const CursosPage({super.key});

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
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'lib/images/icon.png',
                  fit: BoxFit.cover,
                ),
              ),
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

      backgroundColor: const Color(0xFFF5F6FA),

      body: SingleChildScrollView(
        child: Column(
          children: const [
            CursosHeroSection(),
            CursosWhySection(),
            CursosPlatformsSection(),
            CursosAreasSection(),
            CursosTipsSection(),
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
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'lib/images/icon.png',
                            fit: BoxFit.cover,
                          ),
                        ),
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
                    icon: Icons.school_outlined,
                    title: 'Currículo',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const CurriculoPage()));
                    },
                  ),
                  _drawerItem(
                    icon: Icons.chat_bubble_outline,
                    title: 'Entrevista',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const EntrevistaPage()));
                    },
                  ),
                  Container(
                    color: primaryPurple.withOpacity(0.1),
                    child: _drawerItem(
                      icon: Icons.description_outlined,
                      title: 'Cursos',
                      color: primaryPurple,
                      onTap: () => Navigator.pop(context),
                    ),
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


  Widget _drawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? color,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: color ?? Colors.grey[700],
      ),
      title: Text(
        title,
        style: TextStyle(
          color: color ?? Colors.grey[800],
          fontWeight:
          color != null
              ? FontWeight.bold
              : FontWeight.normal,
        ),
      ),
      onTap: onTap,
    );
  }
}
