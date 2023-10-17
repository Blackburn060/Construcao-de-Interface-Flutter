import 'package:flutter/material.dart';

class PaginaSecundaria extends StatelessWidget {
  const PaginaSecundaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Secundária'),
        backgroundColor: Colors.white, // Defina a cor desejada para a AppBar
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        elevation: 0, // Remove a sombra (box shadow)
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
        child: Container(
          
          width: 357, // Largura da imagem
          height: 200, // Altura da imagem
          transform: Matrix4.translationValues(0, -200, 0), // Mover para cima
          child: ClipRRect(
            
            borderRadius: BorderRadius.circular(17), // Arredonda os cantos
            child: Image.asset(
              'assets/fotoPrincipal.png', // Caminho para a imagem
              fit: BoxFit.cover, // Ajustar a imagem para preencher o Container
            ),
          ),
        ),
      ),
    );
  }
}