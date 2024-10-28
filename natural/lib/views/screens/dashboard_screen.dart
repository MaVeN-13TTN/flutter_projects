import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8F3DC),
      appBar: AppBar(
        backgroundColor: const Color(0xFF40916C),
        title: const Text('Dashboard'),
        foregroundColor: const Color(0xFFD8F3DC),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => Get.offAllNamed('/login'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.dashboard_customize,
              size: 100,
              color: Color(0xFF40916C),
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to Dashboard',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF1B4332),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
