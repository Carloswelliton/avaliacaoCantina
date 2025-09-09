import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../screens/home_screen.dart';
import '../screens/menu_screen.dart';
import '../screens/feedback_screen.dart';
import '../screens/admin_screen.dart';
import '../screens/confirmation_screen.dart';

class AppRoutes {
  static const String login = '/';
  static const String home = '/home';
  static const String menu = '/menu';
  static const String feedback = '/feedback';
  static const String admin = '/admin';
  static const String confirmation = '/confirmation';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => LoginScreen(),
    home: (context) => HomeScreen(),
    menu: (context) => MenuScreen(),
    feedback: (context) => FeedbackScreen(),
    admin: (context) => AdminScreen(),
    confirmation: (context) => ConfirmationScreen(),
  };
}
