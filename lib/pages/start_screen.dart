import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/logoquiz.png',
          width: 250,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Toeic Vocabulary Quiz',
          style: GoogleFonts.laila(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            label: const Text(
              'Start',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
