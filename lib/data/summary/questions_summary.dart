import 'package:flutter/material.dart';
import 'package:quiz_app/data/summary/items_summary.dart';

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
              .map(
                (data) => ItemsSummary(data),
              )
              .toList(),
          //.map old value to new value
        ),
      ),
    );
  }
}
