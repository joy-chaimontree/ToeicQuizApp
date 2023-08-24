import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/styles/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.onChooseAnswer, {super.key});

  final void Function(String answer) onChooseAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final String question = 'คำถาม: ';
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onChooseAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question + currentQuestion.questionText,
            textAlign: TextAlign.center,
            style: GoogleFonts.laila(
              color: Colors.black87,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //map doesn't change the original list and yields new lists//
          ...currentQuestion.shuffledAnswer.map(
            (choice) => AnswerButton(
              answerText: choice,
              onTap: () {
                answerQuestion(choice);
              },
            ),
          ),
        ],
      ),
    );
  }
}
