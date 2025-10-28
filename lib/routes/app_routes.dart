import 'package:flutter/material.dart';

import '../screens/login_screen.dart';
import '../screens/home_screen.dart';
import '../screens/feedback_screen.dart';
import '../screens/admin_screen.dart';
import '../screens/confirmation_screen.dart';
import '../screens/forgot_password_screen.dart';
import '../screens/reset_password_screen.dart';
import '../screens/register_student_screen.dart';

// Novas telas
import '../screens/feedback_list_screen.dart';
import '../screens/feedback_success_screen.dart';

class AppRoutes {
  static const String login = '/';
  static const String home = '/home';
  static const String feedback = '/feedback';
  static const String admin = '/admin';
  static const String confirmation = '/confirmation';
  static const String forgotPassword = '/forgotPassword';
  static const String resetPassword = '/resetPassword';
  static const String registerStudent = '/register';

  // Novas rotas
  static const String feedbackList = '/feedbacks';
  static const String feedbackSuccess = '/feedback-success';

  static final Map<String, WidgetBuilder> routes = {
    login: (context) => LoginScreen(),
    home: (context) => HomeScreen(),
    feedback: (context) => FeedbackScreen(),
    admin: (context) => AdminScreen(),
    confirmation: (context) => ConfirmationScreen(),
    forgotPassword: (context) => ForgotPasswordScreen(),
    resetPassword: (context) => ResetPasswordScreen(),
    registerStudent: (context) => RegisterStudentScreen(),

    // Novas rotas adicionadas
    feedbackList: (context) => const FeedbackListScreen(),
    feedbackSuccess: (context) => FeedbackSuccessScreen(),
  };
}
