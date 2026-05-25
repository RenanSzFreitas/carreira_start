import 'package:flutter/material.dart';

// IMPORTS DAS SEÇÕES
import '../widgets/oportunidades/oportunidades_hero.dart';
import '../widgets/oportunidades/programas_section.dart';
import '../widgets/oportunidades/vagas_section.dart';
import '../widgets/oportunidades/dicas_section.dart';
import '../widgets/oportunidades/direitos_section.dart';
import '../widgets/oportunidades/cta_section.dart';
import '../widgets/footer.dart';

// IMPORTS DAS PÁGINAS
import 'home_page.dart';
import 'curriculo_page.dart';
import 'entrevista_page.dart';
import 'cursos_page.dart';
import 'competencias_page.dart';
import 'creditos_page.dart';

class OportunidadesPage extends StatelessWidget {
  const OportunidadesPage({super.key});

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

        iconTheme: const IconThemeData(
          color: Colors.black87,
        ),
      ),

      backgroundColor: const Color(0xFFF5F6FA),

      body: const SingleChildScrollView(
        child: Column(
          children: [
            OportunidadesHero(),

            SizedBox(height: 50),

            ProgramasSection(),

            SizedBox(height: 50),

            VagasSection(),

            SizedBox(height: 50),

            DicasSection(),

            SizedBox(height: 50),

            DireitosSection(),

            SizedBox(height: 50),

            CTASection(),

            SizedBox(height: 40),

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
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(8),
                        ),

                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.circular(8),

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

                    onPressed: () =>
                        Navigator.pop(context),
                  ),
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

                      Navigator.pushReplacement(
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

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const HomePage(),
                        ),
                      );
                    },
                  ),

                  _drawerItem(
                    icon: Icons.chat_bubble_outline,
                    title: 'Entrevista',

                    onTap: () {
                      Navigator.pop(context);

                      Navigator.pushReplacement(
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

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                          const CursosPage(),
                        ),
                      );
                    },
                  ),

                  // ITEM ATUAL DESTACADO
                  Container(
                    color: primaryPurple.withOpacity(0.1),

                    child: _drawerItem(
                      icon: Icons.work_outline,
                      title: 'Oportunidades',
                      color: primaryPurple,

                      onTap: () =>
                          Navigator.pop(context),
                    ),
                  ),

                  _drawerItem(
                    icon: Icons.radar_outlined,
                    title: 'Competências',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                          const CompetenciasPage(),
                        ),
                      );
                    },
                  ),
                  _drawerItem(
                    icon: Icons.groups_outlined,
                    title: 'Créditos',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const CreditosPage()),
                      );
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
      leading: Icon(
        icon,
        color: color ?? Colors.grey[700],
      ),

      title: Text(
        title,

        style: TextStyle(
          color: color ?? Colors.grey[800],
          fontWeight: color != null
              ? FontWeight.bold
              : FontWeight.normal,
        ),
      ),

      onTap: onTap,
    );
  }
}