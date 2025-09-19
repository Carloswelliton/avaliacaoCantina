import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_button.dart';

class ResetPasswordScreen extends StatelessWidget {
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

            Text(
              "Atualizar senha",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "Agora digite uma senha nova contendo:\n"
                "• No mínimo 8 caracteres\n"
                "• Uma letra maiúscula\n"
                "• Um caracter especial (@, !, #, %)\n"
                "• Um número",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: CustomTextField(hintText: "Nova senha", obscureText: true),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: CustomTextField(hintText: "Confirmar senha", obscureText: true),
            ),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: CustomButton(
                text: "Atualizar",
                color: const Color(0xFF6F42C1),
                onPressed: () {
                  Navigator.pop(context); // volta para login ou home
                },
              ),
            ),

            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Não tem uma conta? Criar conta",
                style: TextStyle(color: Colors.white),
              ),
            ),

            const Spacer(),
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
