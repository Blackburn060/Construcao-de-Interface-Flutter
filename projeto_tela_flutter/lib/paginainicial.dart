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
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Hi John, ",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
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
                margin: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Good Morning!",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const PesquisaBar(),
              const SizedBox(height: 32.0),
              const ConteudoPrincipal(),
              const ConteudoSecundario(),
            ],
          ),
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
          width: 360.0,
          margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search for a topic',
              hintStyle: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
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
          margin: const EdgeInsets.only(top: 20.0),
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: IconButton(
            onPressed: () {},
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
            left: 20.0,
            top: 15.0,
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
        const SizedBox(height: 20.0),
        Container(
          margin: const EdgeInsets.only(right: 20.0, left: 20.0),
          width: 450.0,
          height: 250.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: const DecorationImage(
              image: AssetImage('assets/fotoPrincipal.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        Row(
          children: [
            const SizedBox(
              width: 20.0,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 231, 223, 223)),
                elevation: MaterialStateProperty.all(0.0),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
              ),
              onPressed: () {
                // Lida com a ação do botão
              },
              child: Text(
                "Design",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
          ),
          child: Text(
            "How to get started as a mobile app designer\nand get your first client",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 8.0,
          ),
          child: Text(
            "October 4, 2021  •  3 min read",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
          child: Divider(
            height: 10.0,
            thickness: 1.0,
            color: Color.fromARGB(255, 225, 219, 219),
          ),
        ),
      ],
    );
  }
}

class ConteudoSecundario extends StatelessWidget {
  const ConteudoSecundario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "More Articles",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(
                  "See All",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 10.0,
                      color: Color.fromARGB(255, 71, 66, 66),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 15.0), 
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  "Comment-Construire-un-reseau-ferre-dans-Minecraft-780x439.jpeg",
                  width: 130,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Make a Successful Instagram",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "October 4, 2021  •  3 min read",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 20.0), 
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  "Comment-Construire-un-reseau-ferre-dans-Minecraft-780x439.jpeg",
                  width: 130,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get Started in 3D Animation",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "October 4, 2021  •  3 min read",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
