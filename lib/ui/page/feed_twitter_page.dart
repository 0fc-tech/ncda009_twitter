import 'package:flutter/material.dart';
import 'package:tp/ui/component/actions_tweet.dart';
import 'package:tp/ui/component/tweet.dart';
import '../component/bottom_nav_bar.dart' as twitter;
import '../component/connexion.dart';
import '../component/navigation_bar.dart' as twitter;

class FeedTwitterPage extends StatelessWidget {
  const FeedTwitterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Twitter"),
        backgroundColor:
          Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SafeArea(
        child: const Column(
          children: [
            twitter.NavigationBar(),
            Connexion(),
            Tweet(),
            ActionsTweet(),
          ],
        ),
      ),
      bottomNavigationBar: twitter.BottomNavBar(),
    );
  }
}


