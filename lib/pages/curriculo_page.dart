import 'package:flutter/material.dart';

class CurriculoPage extends StatelessWidget {
  const CurriculoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Currículo')),
      body: const Center(
        child: Text('Tela de Currículo'),
      ),
    );
  }
}