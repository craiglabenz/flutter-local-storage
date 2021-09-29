import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

/// Representation of a user of this app.
@Freezed()
class User with _$User {
  const factory User({
    int? id,
    required String name,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

/// Representation of an up or down vote on the counter.
@Freezed()
class Click with _$Click {
  const factory Click({
    int? id,
    required int userId,
    required int change,
    required DateTime createdAt,
  }) = _Click;

  factory Click.fromJson(Map<String, dynamic> json) => _$ClickFromJson(json);
}
