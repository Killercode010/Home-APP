import 'package:flutter/material.dart';
import './widgets/CustomCart.dart';
import './widgets/ApartadosCart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),

        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0), 
          elevation: 0,
          titleSpacing: 0,
          title: Container(
          height: 48,
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
          color: const Color.fromARGB( 255, 45, 45, 45,), 
          borderRadius: BorderRadius.circular(25),
          ),

            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: () {},
                ),
                const Expanded(
                  child: Text(
                    "Buscar en el correo",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: const Color.fromARGB(255, 255, 0, 0), 
                    child: const Text("R", style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            children: [
              const SizedBox(height: 10),

              ////////////////////////////////////// TITULO PRINCIPAL //////////////////////////
              const Text(
                "Principal",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 190, 190, 190),
                ),
              ),

              /////////////////////////// CARD DE APARTADOS //////////////////////////
              const Apartadoscard(
                title: "Social",
                subtitle: "LinkedIn - 1 nuevas vacantes de diseña...",
                icon: Icons.people_alt_outlined,
                iconColor: Color.fromARGB(255, 177, 220, 255), 
              ),
              const Apartadoscard(
                title: "Promociones",
                subtitle: "Adobe Oferta Especial - 50% de descu...",
                icon: Icons.sell_outlined,
                iconColor: Color.fromARGB(255, 156, 255, 159), 
              ),
              const Apartadoscard(
                title: "Notificaciones",
                subtitle: "Computrabajo - Estos son los empleos...",
                icon: Icons.info_outline,
                iconColor: Color.fromARGB(255, 255, 225, 186), 
              ),

              //////////////////////////// CARD DE MENSAJES //////////////////////////
              const CustomCard(
                title: "Freelancer.com",
                subtitle: "Ryan, these Graphic Desi...",
                subtitle2: "Hi Ryan, check them out and",
                icon: Icons.account_circle,
                iconColor: Colors.blue, // Persona azul
                dateText: "4 mar",
              ),
              const CustomCard(
                title: "DiDi para Colombia",
                subtitle: "Llega pronto a tu destino",
                subtitle2: "Miércoles de fútbol: hasta 50%...",
                icon: Icons.account_circle,
                iconColor: Colors.yellow, // Persona amarilla
                dateText: "3 mar",
              ),
              const CustomCard(
                title: "Spotify",
                subtitle: "Tu plan Premium Familiar exp...",
                subtitle2: "El titular del plan tiene que reno...",
                icon: Icons.account_circle,
                imageUrl:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Spotify_logo_without_text.svg/1024px-Spotify_logo_without_text.svg.png", // Logo de spotify
                dateText: "28 feb",
              ),
              const CustomCard(
                title: "Steam Team",
                subtitle: "Nuevo inicio de sesión desde...",
                subtitle2: "Para garantizar tu seguridad...",
                icon: Icons.account_circle,
                imageUrl:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Steam_icon_logo.svg/512px-Steam_icon_logo.svg.png", // Logo de steam
                dateText: "25 feb",
              ),
              const CustomCard(
                title: "Freelancer.com",
                subtitle: "Adobe Oferta Especial - 50% ",
                subtitle2: "Aprovecha esta promoción hoy",
                icon: Icons.account_circle,
                iconColor: Colors.blue,
                dateText: "22 feb",
              ),

              //////////////////////////// NUEVOS CORREOS //////////////////////////
              const CustomCard(
                title: "PlayStation",
                subtitle: "Confirmación de compra en PS...",
                subtitle2: "Gracias por tu compra. Este es...",
                imageUrl: "https://i.pinimg.com/736x/ca/be/7a/cabe7a7e2371300bc8efa3f19e4808a2.jpg", 
                dateText: "19 feb",
              ),
              const CustomCard(
                title: "Juan Sebastian Gutierrez",
                subtitle: "Avance del proyecto de Flutter",
                subtitle2: "Hola, te comparto los últimos...",
                avatarText: "JS", 
                avatarBackgroundColor: Colors.deepPurpleAccent, 
                dateText: "18 feb",
              ),
              const CustomCard(
                title: "Riot Games",
                subtitle: "Novedades de la versión 14.4",
                subtitle2: "Notas de la versión, nuevos as...",
                imageUrl: "https://wholesgame.com/wp-content/uploads/Riot-Games-Logo-Thumb-Square.png", 
                dateText: "15 feb",
              ),
            ],
          ),
        ),

        //////////////////////////////////// MENÚ INFERIOR ////////////////////////
        bottomNavigationBar: NavigationBar(
          selectedIndex: 0,
          indicatorColor: const Color.fromARGB(223, 6, 60, 92),
          onDestinationSelected: (int index) {},
          destinations: const [
            NavigationDestination(icon: Icon(Icons.email_sharp, color: Color.fromARGB(255, 154, 182, 214),),label: '',),
            NavigationDestination(icon: Icon(Icons.videocam_outlined,color: Color.fromARGB(255, 187, 187, 187),),label: '',),
          ],
          backgroundColor: const Color.fromARGB(255, 30, 30, 30),
        ),
      ),
    );
  }
}
