import 'package:flutter/material.dart';

class PaginaSecundaria extends StatelessWidget {
  const PaginaSecundaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Secundária'),
        backgroundColor: Colors.white, // Defina a cor desejada para a AppBar
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {
              // Ação a ser executada quando o botão for clicado
            },
             icon: Image.asset(
    'assets/iconeSalvar.png', // Caminho para a imagem
    width: 24, // Largura da imagem
    height: 24, // Altura da imagem
  ),
),
        ],
      ),
      body: Center(
        child: Image.asset(
          'assets/fotoPrincipal.jpeg', // Caminho para a imagem do corpo
          width: 200, // Largura da imagem do corpo
          height: 200, // Altura da imagem do corpo
        ),
      ),
    );
  }
}
