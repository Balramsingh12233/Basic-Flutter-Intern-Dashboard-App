// lib/screens/leaderboard_screen.dart
import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/leaderboard_tile.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Leaderboard")),
      body: ListView.builder(
        itemCount: dummyLeaderboard.length,
        itemBuilder: (context, index) {
          final entry = dummyLeaderboard[index];
          return LeaderboardTile(
            rank: index + 1,
            name: entry['name']!,
            amount: entry['amount']!,
          );
        },
      ),
    );
  }
}
