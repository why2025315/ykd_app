import 'package:flutter/material.dart';
import 'package:ykd_tea_app/domain/models/question/question.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/card_custom.dart';

class NormalQuerstion extends StatelessWidget {
  const NormalQuerstion({super.key, required this.questions});

  final List<Question> questions;

  @override
  Widget build(BuildContext context) {
    return CardCustom(
      title: '常见问题',
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: questions
            .map((question) => QuestionItem(question: question))
            .toList(),
      ),
    );
  }
}

const titleStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: Color(0xFF333333),
);

const descStyle = TextStyle(fontSize: 14, color: Color(0xFF666666));

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.question});

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question.question ?? '', style: titleStyle),
        SizedBox(height: 8),
        Text(question.answer ?? '', style: descStyle),
      ],
    );
  }
}
