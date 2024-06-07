import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      color: const Color(0xFF58B0F0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Nouveau",style:TextStyle(color: Colors.white) ,),
          Text("Accueil",style:TextStyle(color: Colors.white)),
          Text("Rechercher",style:TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
