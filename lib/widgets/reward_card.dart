// lib/widgets/reward_card.dart
import 'package:flutter/material.dart';

class RewardCard extends StatelessWidget {
  final String title;
  final bool unlocked;

  const RewardCard({super.key, required this.title, required this.unlocked});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: unlocked ? Colors.green[100] : Colors.grey[300],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Icon(
              unlocked ? Icons.lock_open : Icons.lock,
              color: unlocked ? Colors.green : Colors.grey,
              size: 30,
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: unlocked ? Colors.green[800] : Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
