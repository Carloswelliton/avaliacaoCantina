import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_button.dart';
import '../routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF20C997),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),

              // Logo
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/logo.png'),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(height: 20),

              // Título e subtítulo
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Logar para continuar",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(height: 30),

              // Campo Nome
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: CustomTextField(
                  hintText: "Nome",
                ),
              ),
              const SizedBox(height: 16),

              // Campo Senha
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: CustomTextField(
                  hintText: "Senha",
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 24),

              // Botão Logar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: CustomButton(
                  text: "Logar",
                  color: const Color(0xFF6F42C1),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.home);
                  },
                ),
              ),
              const SizedBox(height: 20),

              // Botão Esqueceu a senha
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.forgotPassword);
                },
                child: Text(
                  'Esqueceu a senha?',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const SizedBox(height: 10),

              // Botão Criar conta
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Não tem uma conta? ",
                    style: TextStyle(color: Colors.white70),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Redireciona para a tela de cadastro de estudantes
                      Navigator.pushNamed(context, AppRoutes.registerStudent);
                    },
                    child: Text(
                      "Criar conta",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
