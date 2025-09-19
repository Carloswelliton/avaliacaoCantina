import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_button.dart';
import '../routes/app_routes.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF20C997),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('img/logo.png'),
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(height: 20),

            // Título
            Text(
              "Esqueceu sua senha?",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 10),

            // Instruções
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "Preencha o campo abaixo para receber o código de atualização de senha",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Campo de e-mail
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: CustomTextField(hintText: "E-mail institucional"),
            ),
            const SizedBox(height: 20),

            // Botão "Enviar código"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: CustomButton(
                text: "Enviar código",
                color: const Color(0xFF6F42C1),
                onPressed: () {
                  Navigator.pushNamed(context, '/resetPassword');
                },
              ),
            ),
            const SizedBox(height: 15),

            // Botão "Voltar para a tela inicial"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: CustomButton(
                text: "Voltar para a tela inicial",
                color: const Color(0xFF343A40),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.login,
                    (Route<dynamic> route) => false,
                  );
                },
              ),
            ),
            const SizedBox(height: 10),

            // Botão "Criar conta"
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register'); // se houver rota de registro
              },
              child: const Text(
                "Não tem uma conta? Criar conta",
                style: TextStyle(color: Colors.white),
              ),
            ),

            const Spacer(),

            // Rodapé
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "www.cantina++-com.br",
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
