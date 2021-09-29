import 'package:storage/data/data.dart' as data;
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

typedef Data = Map<dynamic, dynamic>;

class HiveDelegate implements data.DataContract {
  late Box<Data> _usersBox;
  late Box<Data> _clicksBox;

  @override
  Future<int> clicksResult() => Future.value(
        _clicksBox.keys.fold<int>(
          0,
          (int sum, dynamic key) {
            final _data = _clicksBox.get(key)!;
            return sum + _data['change'] as int;
          },
        ),
      );

  @override
  Future<List<data.User>> getAllUsers() => Future.value(
        _usersBox.keys
            .map<data.User>(
                (dynamic key) => userFromHive(key as int, _usersBox.get(key)!))
            .toList(),
      );

  @override
  Future<List<data.Click>> getClicksForUser(data.User user) => Future.value(
        _clicksBox.keys
            .where((dynamic key) => _clicksBox.get(key)!['userId'] == user.id)
            .map<data.Click>(
              (dynamic key) => clickFromHive(key, _clicksBox.get(key)!),
            )
            .toList(),
      );

  @override
  Future<void> ready() async {
    await Hive.initFlutter();
    _usersBox = await Hive.openBox<Map>('users');
    _usersBox.putAll(<int, Data>{
      1: userToHive(const data.User(name: 'McUser')),
      2: userToHive(const data.User(name: 'HomerSimpson')),
      3: userToHive(const data.User(name: 'RickSanchez')),
    });
    _clicksBox = await Hive.openBox<Map>('clicks');
  }

  @override
  Future<void> saveClick({required int change, required int userId}) =>
      _clicksBox.add(
        clickToHive(
          data.Click(
              change: change,
              userId: userId,
              createdAt: DateTime.now().toUtc()),
        ),
      );
}

data.User userFromHive(int? id, Data _data) =>
    data.User(id: id, name: _data['name']);

Data userToHive(data.User user) => <dynamic, dynamic>{'name': user.name};

data.Click clickFromHive(int? id, Data _data) => data.Click(
      id: id,
      userId: _data['userId'],
      change: _data['change'],
      createdAt: _data['createdAt'],
    );

Data clickToHive(data.Click click) => <dynamic, dynamic>{
      'userId': click.userId,
      'change': click.change,
      'createdAt': click.createdAt
    };
