// lib/screens/dashboard_screen.dart
import 'package:flutter/material.dart';
import 'leaderboard_screen.dart';
import 'announcements_screen.dart';
import '../widgets/reward_card.dart';

class DashboardScreen extends StatelessWidget {
  final String name;
  const DashboardScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    String referralCode = name.toLowerCase().replaceAll(" ", "") + "2025";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AnnouncementsScreen()),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.leaderboard),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const LeaderboardScreen()),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, $name 👋", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            Text("Referral Code: $referralCode"),
            const SizedBox(height: 10),
            const Text("Total Donations Raised: ₹5,000", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const Text("Rewards:", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RewardCard(title: "Bronze", unlocked: true),
                RewardCard(title: "Silver", unlocked: false),
                RewardCard(title: "Gold", unlocked: false),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
