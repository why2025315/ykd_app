// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Question _$QuestionFromJson(Map<String, dynamic> json) => _Question(
  id: (json['id'] as num?)?.toInt(),
  shopId: (json['shopId'] as num?)?.toInt(),
  question: json['question'] as String?,
  answer: json['answer'] as String?,
);

Map<String, dynamic> _$QuestionToJson(_Question instance) => <String, dynamic>{
  'id': instance.id,
  'shopId': instance.shopId,
  'question': instance.question,
  'answer': instance.answer,
};
