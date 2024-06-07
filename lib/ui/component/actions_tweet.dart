import 'package:flutter/material.dart';

class ActionsTweet extends StatelessWidget {
  const ActionsTweet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(onPressed: (){}, child: Text("Répondre")),
        TextButton(onPressed: (){}, child: Text("Retweet")),
        TextButton(onPressed: (){}, child: Text("Favori")),
    ],);
  }
}
