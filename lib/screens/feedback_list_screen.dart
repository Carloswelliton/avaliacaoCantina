import 'package:flutter/material.dart';

class FeedbackListScreen extends StatelessWidget {
  const FeedbackListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF20C997),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6F42C1),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("Voltar"),
                  ),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo.png'),
                    radius: 25,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "FEEDBACKS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Exemplo de feedback 1
              _buildFeedbackCard(
                name: "Bernardo Garcia",
                curso: "Metalurgia - Vesp",
                hora: "16:25",
                estrelas: 5,
                texto:
                    "Prato delicioso! Gostaria que continuassem com essa variedade e quem sabe fazer o risoto mais vezes.",
              ),

              _buildFeedbackCard(
                name: "Adriane Moreno",
                curso: "Informática - Mat",
                hora: "10:20",
                estrelas: 2,
                texto: "Que tal outros tipos de acompanhamento? Fazer dois talvez",
              ),

              const Spacer(),
              const Center(
                child: Text(
                  "www.cantina++.com.br",
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeedbackCard({
    required String name,
    required String curso,
    required String hora,
    required int estrelas,
    required String texto,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                index < estrelas ? Icons.star : Icons.star_border,
                color: Colors.yellow,
              ),
            ),
          ),
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.grey),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(color: Colors.white)),
                  Text(curso, style: const TextStyle(color: Colors.white70)),
                  Text(hora, style: const TextStyle(color: Colors.white70)),
                ],
              )
            ],
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              texto,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
