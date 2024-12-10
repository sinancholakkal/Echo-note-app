// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNoteModel _$GetNoteModelFromJson(Map<String, dynamic> json) => GetNoteModel(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      isCompleted: json['is_completed'] as bool?,
    );

Map<String, dynamic> _$GetNoteModelToJson(GetNoteModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'is_completed': instance.isCompleted,
    };
