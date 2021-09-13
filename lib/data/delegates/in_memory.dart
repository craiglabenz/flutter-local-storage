import 'package:storage/data/data.dart';

/// Fake backend that does not actually persist any data. Useful for tests.
class InMemoryData extends DataContract {
  InMemoryData()
      : clicks = <Click>[],
        users = <User>[];

  final List<Click> clicks;
  final List<User> users;

  @override
  Future<int> clicksResult() {
    int _count = 0;
    // ignore: avoid_function_literals_in_foreach_calls
    clicks.forEach((click) => _count += click.change);
    return Future.value(_count);
  }

  @override
  Future<List<User>> getAllUsers() => Future.value(users);

  @override
  Future<List<Click>> getClicksForUser(User user) =>
      Future.value(clicks.where((click) => click.userId == user.id).toList());

  @override
  Future<void> ready() => Future<void>.value();

  @override
  Future<void> saveClick({required int change, required int userId}) async =>
      clicks.add(
        Click(
          id: DateTime.now().millisecondsSinceEpoch,
          change: change,
          userId: userId,
          createdAt: DateTime.now().toUtc(),
        ),
      );
}
