// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names
_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_Click _$$_ClickFromJson(Map<String, dynamic> json) => _$_Click(
      id: json['id'] as int?,
      userId: json['userId'] as int,
      change: json['change'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_ClickToJson(_$_Click instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'change': instance.change,
      'createdAt': instance.createdAt.toIso8601String(),
    };
