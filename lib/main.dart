import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Builder( // Adiciona um Builder para garantir o contexto correto
              builder: (BuildContext context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/flutter-logo.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Título da Página',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Este é um parágrafo de exemplo que descreve o conteúdo da tela...',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        // Chama o ScaffoldMessenger com o contexto correto
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Botão pressionado!')),
                        );
                      },
                      child: const Text('Clique Aqui'),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
