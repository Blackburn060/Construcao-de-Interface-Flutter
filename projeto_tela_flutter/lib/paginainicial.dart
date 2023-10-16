import 'package:flutter/material.dart';
import 'package:projeto_tela_flutter/paginasecundaria.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  double iconMarginRight = 20.0;
  double iconVerticalOffset = 20.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 300,
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Hi John, ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaginaSecundaria()));
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
          const Text(
            "Good Morning!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
              height: 20.0), // Espaço entre os textos e a barra de pesquisa
          const PesquisaBar(), // Usando o widget PesquisaBar aqui
        ],
      ),
    );
  }
}

class PesquisaBar extends StatelessWidget {
  const PesquisaBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search for a topic',
              hintStyle: const TextStyle(color: Colors.grey), // Cor do hintText
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.withOpacity(0.3), // Cor da borda
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.withOpacity(
                      0.5), // Cor da borda quando a caixa de pesquisa está em foco
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
        const SizedBox(
            width:
                8.0), // Espaço entre a caixa de pesquisa e o botão de pesquisa
        Container(
          width: 55.0, // Largura do botão
          height: 50.0, // Altura do botão
          decoration: BoxDecoration(
            color: Colors.black, // Cor de fundo do botão
            border: Border.all(
              color: Colors.black, // Cor da borda do botão
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: IconButton(
            onPressed: () {
              // Ação a ser executada quando o botão de pesquisa for clicado
            },
            icon: const Icon(Icons.search,
                color: Colors.white), // Ícone de pesquisa e cor do ícone
          ),
        ),
      ],
    );
  }
}

