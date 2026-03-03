import 'package:flutter/material.dart';

class Apartadoscard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;



const Apartadoscard({
  super.key,
  required this.title,
  required this.subtitle, 
  required this.icon,
  this.color = const Color.fromARGB(255, 0, 0, 0),

});

@override
  Widget build(BuildContext context) {
    return Card(
    margin: const EdgeInsets.symmetric(vertical: 0),
    elevation: 0,

     child: ListTile(
     dense: true,
     contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      leading: Icon(icon, size: 25, color: Colors.white),title: Text(title,style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11, color: Colors.white),
      ),
      subtitle: Text(subtitle, style: const TextStyle(fontSize: 9.5, color: Color.fromARGB(255, 255, 255, 255))),
      tileColor: color,
     ),
    );
  }
}