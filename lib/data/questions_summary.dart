import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  final String answerChosen = ' คำตอบที่เลือก:  ';
  final String correctChosen = ' คำตอบที่ถูกต้อง:  ';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              //.map old value to new value
              .map(
                (data) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (Text(((data['question_index'] as int) + 1).toString())),
                    Expanded(
                      child: Column(
                        children: [
                          Text(data['question_text'] as String),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(answerChosen + (data['user_answer'] as String)),
                          Text(correctChosen +
                              (data['correct_answer'] as String)),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
