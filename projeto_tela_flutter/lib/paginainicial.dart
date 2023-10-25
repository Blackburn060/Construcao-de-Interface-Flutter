import 'package:flutter/material.dart';
import 'package:projeto_tela_flutter/paginaSecundaria.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  double iconMarginRight = 20.0;
  double iconVerticalOffset = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 20.0), // Margem direita para o texto "Hi John, "
                  child: Text(
                    "Hi John, ",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaginaSecundaria()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: iconMarginRight),
                    child: Transform.translate(
                      offset: Offset(0.0, iconVerticalOffset),
                      child: Image.asset(
                        'assets/IconePaginaPrincipal.png',
                        width: 40.0,
                        height: 40.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 20.0), // Margem superior para o texto "Good Morning!"
              child: Text(
                "Good Morning!",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const PesquisaBar(),
            const SizedBox(
                height:
                    42.0), // Espaço entre a PesquisaBar e o ConteudoPrincipal
            const ConteudoPrincipal(),
          ],
        ),
      ),
    );
  }
}

class PesquisaBar extends StatelessWidget {
  const PesquisaBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 360.0, // Largura máxima da barra de pesquisa
          margin: const EdgeInsets.only(
              top: 20.0,
              left: 20.0,
              right: 8.0), // Ajuste o right para a barra de pesquisa
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search for a topic',
              hintStyle: const TextStyle(color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.withOpacity(0.3),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
        Container(
          width: 55.0,
          height: 50.0,
          margin: const EdgeInsets.only(
              top: 20.0), // Ajuste o left para o botão de pesquisa
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: IconButton(
            onPressed: () {
              // Ação a ser executada quando o botão de pesquisa for clicado
            },
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class ConteudoPrincipal extends StatelessWidget {
  const ConteudoPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0, // Margem à esquerda para mover o título
            top: 15.0, // Espaçamento entre o título e a imagem
          ),
          child: Text(
            "Today's Article",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0), // Espaçamento entre o título e a imagem
        Container(
          margin: const EdgeInsets.only(right: 20.0, left: 20.0),
          width: 450.0, // Largura da imagem
          height: 250.0, // Altura da imagem
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(20.0), // Defina o raio de borda desejado
            image: const DecorationImage(
              image: AssetImage('assets/fotoPrincipal.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16.0), // Espaçamento entre a imagem e o botão
        Row(
          children: [
            const SizedBox(
                width: 20.0), // Espaçamento entre o botão e a margem esquerda
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 231, 223, 223)),
                elevation: MaterialStateProperty.all(0.0),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        7.0), // Ajuste o raio de borda desejado
                  ),
                ),
              ),
              onPressed: () {
                // Lida com a ação do botão
              },
              child: const Text(
                "Design",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
