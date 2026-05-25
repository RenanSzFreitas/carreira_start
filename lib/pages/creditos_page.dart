import 'package:flutter/material.dart';

//import '../widgets/footer.dart';

import 'home_page.dart';
import 'curriculo_page.dart';
import 'entrevista_page.dart';
import 'cursos_page.dart';
import 'oportunidades_page.dart';
import 'competencias_page.dart';
import 'creditos_page.dart';

class CreditosPage extends StatelessWidget {
  const CreditosPage({super.key});

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

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(
              padding: const EdgeInsets.all(20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),

                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F3FF),
                      borderRadius: BorderRadius.circular(24),
                    ),

                    child: Column(
                      children: [
                        Container(
                          width: 64,
                          height: 64,

                          decoration: BoxDecoration(
                            color: const Color(0xFFE9D5FF),
                            borderRadius: BorderRadius.circular(18),
                          ),

                          child: const Icon(
                            Icons.groups_rounded,
                            color: Color(0xFF7232F2),
                            size: 34,
                          ),
                        ),

                        const SizedBox(height: 20),

                        const Text(
                          'Desenvolvimento\nde Software',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                          ),
                        ),

                        const SizedBox(height: 28),

                        // PROFESSOR
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(18),

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                          ),

                          child: Row(
                            children: [
                              Container(
                                width: 52,
                                height: 52,

                                decoration: BoxDecoration(
                                  color: const Color(0xFFEEF2FF),
                                  borderRadius: BorderRadius.circular(14),
                                ),

                                child: const Icon(
                                  Icons.school_rounded,
                                  color: Color(0xFF6366F1),
                                ),
                              ),

                              const SizedBox(width: 16),

                              const Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,

                                  children: [
                                    Text(
                                      'Professor',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),

                                    SizedBox(height: 4),

                                    Text(
                                      'Prof. Dr. Elvio Gilberto da Silva',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),

                        // EQUIPE
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(18),

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 52,
                                    height: 52,

                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF3E8FF),
                                      borderRadius:
                                      BorderRadius.circular(14),
                                    ),

                                    child: const Icon(
                                      Icons.people_alt_rounded,
                                      color: Color(0xFF9333EA),
                                    ),
                                  ),

                                  const SizedBox(width: 16),

                                  const Text(
                                    'Equipe',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 20),

                              const Text(
                                '• Gustavo Santos Buzacarini',
                                style: TextStyle(fontSize: 15),
                              ),

                              const SizedBox(height: 8),

                              const Text(
                                '• Maria Eduarda Martin Menão',
                                style: TextStyle(fontSize: 15),
                              ),

                              const SizedBox(height: 8),

                              const Text(
                                '• Matheus Clementino Risatti',
                                style: TextStyle(fontSize: 15),
                              ),

                              const SizedBox(height: 8),

                              const Text(
                                '• Rebeca Gonçalves Andrejevas dos Santos',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),

                              const SizedBox(height: 8),

                              const Text(
                                '• Renan de Souza Freitas',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  Card(
                    elevation: 2,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(24),

                      child: Column(
                        children: [
                          const Text(
                            'Desenvolvimento',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),

                          const SizedBox(height: 20),

                          Image.asset(
                            'lib/images/desenvolvimento.jpg',
                            height: 90,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  Card(
                    elevation: 2,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(24),

                      child: Column(
                        children: [
                          const Text(
                            'Apoio',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),

                          const SizedBox(height: 20),

                          Image.asset(
                            'lib/images/apoio.jpg',
                            height: 90,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),

            //const Footer(),
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
                    onPressed: () => Navigator.pop(context),
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
                          builder: (_) => const CurriculoPage(),
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
                          builder: (_) => const EntrevistaPage(),
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
                          builder: (_) => const CursosPage(),
                        ),
                      );
                    },
                  ),

                  _drawerItem(
                    icon: Icons.work_outline,
                    title: 'Oportunidades',
                    onTap: () {
                      Navigator.pop(context);

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const OportunidadesPage(),
                        ),
                      );
                    },
                  ),

                  _drawerItem(
                    icon: Icons.radar_outlined,
                    title: 'Competências',
                    onTap: () {
                      Navigator.pop(context);

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const CompetenciasPage(),
                        ),
                      );
                    },
                  ),

                  Container(
                    color: primaryPurple.withOpacity(0.1),

                    child: _drawerItem(
                      icon: Icons.groups_outlined,
                      title: 'Créditos',
                      color: primaryPurple,
                      onTap: () => Navigator.pop(context),
                    ),
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