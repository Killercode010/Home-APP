import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String subtitle2;
  final IconData? icon; 
  final Color color;
  final Color iconColor; 
  final String? imageUrl; 
  final String? avatarText; 
  final Color avatarBackgroundColor; 
  final String dateText; 

  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.subtitle2, 
    required this.dateText,
    this.icon = Icons.account_circle,
    this.iconColor = const Color.fromARGB(255, 150, 150, 150),
    this.imageUrl,
    this.avatarText,
    this.avatarBackgroundColor = Colors.teal, 
    this.color = const Color.fromARGB(255, 0, 0, 0),
  });

  @override
  Widget build(BuildContext context) {
    Widget leadingWidget;
    if (imageUrl != null) {
      leadingWidget = CircleAvatar(radius: 18, backgroundColor: Colors.transparent, backgroundImage: NetworkImage(imageUrl!),);
    } else if (avatarText != null) {
      leadingWidget = CircleAvatar(
        radius: 18,
        backgroundColor: avatarBackgroundColor,
        child: Text(
          avatarText!, 
          style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold)
        ),
      );
    } else {
      leadingWidget = Icon(icon, size: 36, color: iconColor);
    }

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 0),
      elevation: 0,
      child: ListTile(
        dense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        leading: leadingWidget,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),  
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subtitle, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white)),
            Text(subtitle2, style: const TextStyle(fontSize: 10, color: Colors.white70)),
          ],
        ),

        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(dateText, style: const TextStyle(fontSize: 9, color: Colors.white70)),
            const SizedBox(height: 4), 
            const Icon(Icons.star_border, size: 18, color: Color.fromARGB(255, 140, 140, 140)),
          ],
        ),
        tileColor: color,
      ),
    );
  }
}

