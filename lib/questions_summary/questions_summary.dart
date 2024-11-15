import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/summary_items.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItems(itemData: data);
          }).toList(),
        ),
      ),
    );
  }
}
