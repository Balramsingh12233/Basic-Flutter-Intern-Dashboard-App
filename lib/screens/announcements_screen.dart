// lib/screens/announcements_screen.dart
import 'package:flutter/material.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Announcements")),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("📢 Milestone Reached!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("Interns have raised ₹10,000 collectively. Keep going!"),
            SizedBox(height: 20),
            Text("🎁 New rewards will be unlocked soon."),
          ],
        ),
      ),
    );
  }
}
