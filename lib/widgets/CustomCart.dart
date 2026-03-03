import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String subtitle2;
  final IconData icon;
  final Color color;



const CustomCard({
  super.key,
  required this.title,
  required this.subtitle,
  required this.subtitle2, 
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
    
      leading: Icon(icon, size: 30, color: const Color.fromARGB(255, 150, 150, 150)),title: Text(title,style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11, color: Colors.white),  
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(subtitle, style: const TextStyle(fontSize: 9.5, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255))),
          Text(subtitle2, style: const TextStyle(fontSize: 9.5, color: Color.fromARGB(255, 255, 255, 255))),
        ],
      ),
      trailing: const Icon(Icons.star_border, color:Color.fromARGB(255, 140, 140, 140)),
      tileColor: color,
      ),
     );
  }
}