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
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 30, 30, 30),
          /////// Recomendacion profesor: Siempre ANTES del titulo
          leading: Text("", style: TextStyle(fontSize: 18, color: Colors.white)),
            
          actions: <Widget> [
            IconButton(onPressed: () {}, icon: Icon(Icons.menu, color:Color.fromARGB(255, 140, 140, 140)),
            ),
          ],
          ),
        body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10.0),
  child: ListView(
    children: [
      const SizedBox(height: 10),

////////////////////////////////////// TITULO PRINCIPAL //////////////////////////
      const Text(
        "Principal",
        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color:Color.fromARGB(255, 190, 190, 190)),
      ),

      /////////////////////////// CARD DE APARTADOS //////////////////////////          
      Apartadoscard(
        title: "Social",
        subtitle: "LinkedIn - 1 nuevas vacantes de...",
        icon: Icons.people_alt_outlined,
      ),

      Apartadoscard(
        title: "Promociones",
        subtitle: "Adobe Oferta Especial - 50% de...",
        icon: Icons.sell_outlined,
      ),

      Apartadoscard(
        title: "Notificaciones",
        subtitle: "Computrabajo - Estos son los empleos...",
        icon: Icons.info_outline,
      ),

      //////////////////////////// CARD DE MENSAJES //////////////////////////
      CustomCard(
        title: "Freelancer.com",
        subtitle: "Santiago, these Graphic Desi...",
        subtitle2: "Hi Santiago, check them out and",
        icon: Icons.account_circle,
      ),
      CustomCard(
        title: "Freelancer.com",
        subtitle: "Santiago, these are the jobs t...",
        subtitle2: "Hi Santiago, these are the jobs...",
        icon: Icons.account_circle,
      ),
      CustomCard(
        title: "DiDi para Colombia",
        subtitle: "Llega pronto a tu destino",
        subtitle2: "Miercoles de fútbol: hasta 50%...",
        icon: Icons.account_circle,
      ),
      CustomCard(
        title: "Spotify",
        subtitle: "Tu plan Premium Familiar exp...",
        subtitle2: "El titular del plan tiene que reno...",
        icon: Icons.account_circle,
      ),
      CustomCard(
        title: "Steam Team",
        subtitle: "Nuevo inicio de sesi...",
        subtitle2: "Hace 2 horas",
        icon: Icons.account_circle,
      ),
      CustomCard(
        title: "Freelancer.com",
        subtitle: "Adobe Oferta Especial - 50% de...",
        subtitle2: "Hace 2 horas",
        icon: Icons.account_circle,
      ),
      CustomCard(
        title: "DiDi para Colombia",
        subtitle: "Subtitle 3",
        subtitle2: "Hace 2 horas",
        icon: Icons.account_circle,
      ),
      CustomCard(
        title: "Spotify",
        subtitle: "Subtitle 3",
        subtitle2: "Hace 2 horas",
        icon: Icons.account_circle,
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
            NavigationDestination(
              icon: Icon(Icons.email_sharp, color: Color.fromARGB(255, 154, 182, 214)),label: '',
            ),
            NavigationDestination(icon: Icon(Icons.videocam_outlined, color: Color.fromARGB(255, 187, 187, 187)),label: '',
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 30, 30, 30),
        ),
      ),
    );
  }
}

