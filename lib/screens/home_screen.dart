import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: 'Menu',
            onPressed: () => Navigator.pushNamed(context, AppRoutes.menu),
          ),
          CustomButton(
            text: 'Feedback',
            onPressed: () => Navigator.pushNamed(context, AppRoutes.feedback),
          ),
          CustomButton(
            text: 'Admin',
            onPressed: () => Navigator.pushNamed(context, AppRoutes.admin),
          ),
          CustomButton(
            text: 'Confirmation',
            onPressed: () => Navigator.pushNamed(context, AppRoutes.confirmation),
          ),
        ],
      ),
    );
  }
}
