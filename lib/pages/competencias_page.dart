import 'package:flutter/material.dart';
import '../widgets/competencias/competencias_hero.dart';
import '../widgets/competencias/autoavaliacao_section.dart';
import '../widgets/competencias/competencias_tabs.dart';
import '../widgets/competencias/plano_desenvolvimento.dart';
import '../widgets/footer.dart';

// IMPORTS DAS OUTRAS PÁGINAS
import 'home_page.dart';
import 'curriculo_page.dart';
import 'entrevista_page.dart';
import 'cursos_page.dart';
import 'oportunidades_page.dart';

class CompetenciasPage extends StatelessWidget {
  const CompetenciasPage({super.key});

  static const Color primaryPurple = Color(0xFF7232F2);

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
              child: const Icon(
                Icons.wifi_tethering,
                color: Colors.white,
                size: 20,
              ),
            ),

            const SizedBox(width: 8),

            const Text(
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
            CompetenciasHero(),
            AutoavaliacaoSection(),
            CompetenciasTabs(),
            PlanoDesenvolvimento(),
            SizedBox(height: 40),
            Footer(),
          ],
        ),
      ),
    );
  }

  // ==========================
  // DRAWER
  // ==========================
  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: primaryPurple,
                          borderRadius:
                          BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.wifi_tethering,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),

                      const SizedBox(width: 8),

                      const Text(
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
                    onPressed: () =>
                        Navigator.pop(context),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView(
                children: [
                  _drawerItem(
                    icon: Icons.home_outlined,
                    title: 'Início',
                    onTap: () {
                      Navigator.pop(context);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const HomePage(),
                        ),
                      );
                    },
                  ),

                  _drawerItem(
                    icon: Icons.description_outlined,
                    title: 'Currículo',
                    onTap: () {
                      Navigator.pop(context);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                          const CurriculoPage(),
                        ),
                      );
                    },
                  ),

                  _drawerItem(
                    icon: Icons.chat_bubble_outline,
                    title: 'Entrevista',
                    onTap: () {
                      Navigator.pop(context);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                          const EntrevistaPage(),
                        ),
                      );
                    },
                  ),

                  _drawerItem(
                    icon: Icons.school_outlined,
                    title: 'Cursos',
                    onTap: () {
                      Navigator.pop(context);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                          const CursosPage(),
                        ),
                      );
                    },
                  ),

                  _drawerItem(
                    icon: Icons.work_outline,
                    title: 'Oportunidades',
                    onTap: () {
                      Navigator.pop(context);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                          const OportunidadesPage(),
                        ),
                      );
                    },
                  ),

                  _drawerItem(
                    icon: Icons.radar_outlined,
                    title: 'Competências',
                    onTap: () {
                      Navigator.pop(context);
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
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[700]),
      title: Text(
        title,
        style: TextStyle(color: Colors.grey[800]),
      ),
      onTap: onTap,
    );
  }
}