// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call({required int id, required String name}) {
    return _User(
      id: id,
      name: name,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User({required this.id, required this.name});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({required int id, required String name}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

Click _$ClickFromJson(Map<String, dynamic> json) {
  return _Click.fromJson(json);
}

/// @nodoc
class _$ClickTearOff {
  const _$ClickTearOff();

  _Click call(
      {required int id,
      required int userId,
      required int change,
      required DateTime createdAt}) {
    return _Click(
      id: id,
      userId: userId,
      change: change,
      createdAt: createdAt,
    );
  }

  Click fromJson(Map<String, Object> json) {
    return Click.fromJson(json);
  }
}

/// @nodoc
const $Click = _$ClickTearOff();

/// @nodoc
mixin _$Click {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get change => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClickCopyWith<Click> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClickCopyWith<$Res> {
  factory $ClickCopyWith(Click value, $Res Function(Click) then) =
      _$ClickCopyWithImpl<$Res>;
  $Res call({int id, int userId, int change, DateTime createdAt});
}

/// @nodoc
class _$ClickCopyWithImpl<$Res> implements $ClickCopyWith<$Res> {
  _$ClickCopyWithImpl(this._value, this._then);

  final Click _value;
  // ignore: unused_field
  final $Res Function(Click) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? change = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ClickCopyWith<$Res> implements $ClickCopyWith<$Res> {
  factory _$ClickCopyWith(_Click value, $Res Function(_Click) then) =
      __$ClickCopyWithImpl<$Res>;
  @override
  $Res call({int id, int userId, int change, DateTime createdAt});
}

/// @nodoc
class __$ClickCopyWithImpl<$Res> extends _$ClickCopyWithImpl<$Res>
    implements _$ClickCopyWith<$Res> {
  __$ClickCopyWithImpl(_Click _value, $Res Function(_Click) _then)
      : super(_value, (v) => _then(v as _Click));

  @override
  _Click get _value => super._value as _Click;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? change = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Click(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Click implements _Click {
  const _$_Click(
      {required this.id,
      required this.userId,
      required this.change,
      required this.createdAt});

  factory _$_Click.fromJson(Map<String, dynamic> json) =>
      _$$_ClickFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final int change;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Click(id: $id, userId: $userId, change: $change, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Click &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.change, change) ||
                const DeepCollectionEquality().equals(other.change, change)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(change) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$ClickCopyWith<_Click> get copyWith =>
      __$ClickCopyWithImpl<_Click>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClickToJson(this);
  }
}

abstract class _Click implements Click {
  const factory _Click(
      {required int id,
      required int userId,
      required int change,
      required DateTime createdAt}) = _$_Click;

  factory _Click.fromJson(Map<String, dynamic> json) = _$_Click.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get userId => throw _privateConstructorUsedError;
  @override
  int get change => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClickCopyWith<_Click> get copyWith => throw _privateConstructorUsedError;
}
