import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF20C997),
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: const Color(0xFF20C997),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: 'Feedback',
              onPressed: () => Navigator.pushNamed(context, AppRoutes.feedback),
            ),
            const SizedBox(height: 16),
            CustomButton(
              text: 'Admin',
              onPressed: () => Navigator.pushNamed(context, AppRoutes.admin),
            ),
            const SizedBox(height: 16),
            CustomButton(
              text: 'Confirmation',
              onPressed: () =>
                  Navigator.pushNamed(context, AppRoutes.confirmation),
            ),
          ],
        ),
      ),
    );
  }
}
