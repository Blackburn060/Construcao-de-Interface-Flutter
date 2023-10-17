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
              transform: Matrix4.translationValues(0, -57, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17),
                child: Image.asset(
                  'assets/fotoPrincipal.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                transform: Matrix4.translationValues(0, -50, 0),
                child: const Text(
                  '               octuber 4, 2021 * 3 min read',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 15, 15, 15),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10), // Espaço entre os textos
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                transform: Matrix4.translationValues(18, -46, 0),
                child: const Text(
                  '  How to get started as a mobile app designer and get your first client?',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 15, 15, 15),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 22), // Espaço entre os textos
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                transform: Matrix4.translationValues(6, -29, 0),
                child: const Text(
                  '  Everyone wants to make the next great mobile app. It can be an extremely profitable way to make some money if you know what youre doing.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 15, 15, 15),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                transform: Matrix4.translationValues(3, -19, 0),
                child: const Text(
                  '  If you ve got a great mobile app idea and decided to consult with a developer or an app development company, you may have been surprised to hear how costly it is to outsource development.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 15, 15, 15),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                transform: Matrix4.translationValues(6, -1, 0),
                child: const Text(
                  '  So thats when the thought hit you, I can just do learn to do this myself."',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 15, 15, 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: TextButton(
          onPressed: () {
            // Ação a ser executada quando o botão "Read more" for clicado
          },
          child: const Text(
            'Read more',
            style: TextStyle(
              
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
