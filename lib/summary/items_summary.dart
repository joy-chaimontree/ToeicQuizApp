import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'index_identifier.dart';


class ItemsSummary extends StatelessWidget {
  const ItemsSummary(this.itemData, {super.key});

  final Map<String, Object> itemData;
  final String answerChosen = ' คำตอบที่เลือก:  ';
  final String correctChosen = ' คำตอบที่ถูกต้อง:  ';

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IndexIdentifier(
          questionIndex: itemData['question_index'] as int,
          isCorrectAnswer: isCorrectAnswer,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question_text'] as String,
                style: GoogleFonts.laila(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                answerChosen + (itemData['user_answer'] as String),
                style: TextStyle(
                  color: Colors.blueGrey.shade800,
                  fontSize: 14,
                ),
              ),
              Text(
                correctChosen + (itemData['correct_answer'] as String),
                style: TextStyle(
                  color: Colors.blueGrey.shade900,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
