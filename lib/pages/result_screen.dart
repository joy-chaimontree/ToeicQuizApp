import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/data/summary/questions_summary.dart';
import 'package:quiz_app/pages/start_screen.dart';
import 'package:quiz_app/pages/quiz.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chosenAnswers, this.onRestart, {super.key});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          //1.key 2.colon(:) to separate the name 3.value//
          'question_index': i,
          //specific question by index i
          'question_text': questions[i].questionText,
          //first answer is correct
          'correct_answer': questions[i].answerChoice[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numberTotalQuestions = questions.length;
    final numberCorrectQuestions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;
    //.where (built-in method) allows to filter the list on which it calling

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'คุณตอบถูก $numberCorrectQuestions ใน $numberTotalQuestions ข้อ!',
              style: GoogleFonts.laila(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('เริ่มต้นใหม่'),
            ),
          ],
        ),
      ),
    );
  }
}
