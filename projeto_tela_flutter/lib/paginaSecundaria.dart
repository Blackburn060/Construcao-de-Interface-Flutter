import 'package:flutter/material.dart';

class PaginaSecundaria extends StatelessWidget {
  const PaginaSecundaria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Secundária'),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              // Ação a ser executada quando o botão for clicado
            },
            icon: Image.asset(
              'assets/iconeSalvar.png',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 357,
              height: 200,
              transform: Matrix4.translationValues(0, -196, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17),
                child: Image.asset(
                  'assets/fotoPrincipal.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
             
              child: Container(
                padding: const EdgeInsets.all(8),
                             transform: Matrix4.translationValues(0, -190, 0),

                child: const Text(
                  'octuber 4, 2021 * 3 min read',
                  style: TextStyle(
                    
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 15, 15, 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





