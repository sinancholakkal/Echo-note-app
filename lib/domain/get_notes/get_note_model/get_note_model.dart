
import 'package:json_annotation/json_annotation.dart';

part 'get_note_model.g.dart';

@JsonSerializable()
class GetNoteModel {
  @JsonKey(name: '_id')
  String? id;
  String? title;
  String? description;
  @JsonKey(name: 'is_completed')
  bool? isCompleted;

  GetNoteModel({
    this.id,
    this.title,
    this.description,
    this.isCompleted,
  });

  factory GetNoteModel.fromJson(Map<String, dynamic> json) => _$GetNoteModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetNoteModelToJson(this);
}
