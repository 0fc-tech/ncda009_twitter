import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(onPressed: (){}, child: Text("Fil")),
        TextButton(onPressed: (){}, child: Text("Notification")),
        TextButton(onPressed: (){}, child: Text("Message")),
        TextButton(onPressed: (){}, child: Text("Moi")),
      ],
    );
  }
}
