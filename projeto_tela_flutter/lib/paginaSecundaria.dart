import 'package:flutter/material.dart';

class PaginaSecundaria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Secundária'),
        backgroundColor: Colors.white, // Defina a cor desejada para a AppBar
        iconTheme: IconThemeData(color: Colors.black),
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
        child: Text('Conteúdo da Página Secundária'),
      ),
    );
  }
}
