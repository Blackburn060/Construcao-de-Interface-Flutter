import 'package:flutter/material.dart';
import 'package:projeto_tela_flutter/paginaSecundaria.dart';

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
                  margin: const EdgeInsets.only(left: 20.0), // Margem direita para o texto "Hi John, "
                  child: const Text(
                    "Hi John, ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
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
              margin: const EdgeInsets.only(left: 20.0), // Margem superior para o texto "Good Morning!"
              child: const Text(
                "Good Morning!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const PesquisaBar(),
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
          margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 8.0), // Ajuste o right para a barra de pesquisa
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
          margin: const EdgeInsets.only(top: 20.0), // Ajuste o left para o botão de pesquisa
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
