import 'package:moor/moor.dart';
// import 'package:path/path.dart' as p;
// import 'package:path_provider/path_provider.dart';
import 'package:storage/data/data.dart' as data;
// import 'package:storage/data/data.dart';
// import 'dart:io';

part 'moor_interface.g.dart';

// LazyDatabase _openConnection() {
//   // the LazyDatabase util lets us find the right location for the file async.
//   return LazyDatabase(() async {
//     // put the database file, called db.sqlite here, into the documents folder
//     // for your app.
//     final dbFolder = await getApplicationDocumentsDirectory();
//     final file = File(p.join(dbFolder.path, 'moor_db.db'));

//     return VmDatabase(file);
//   });
// }

@UseMoor(tables: [Users, Clicks])
class MoorDelegate extends _$MoorDelegate implements data.DataContract {
  // MoorDelegate() : super(_openConnection());
  MoorDelegate(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  @override
  Future<int> clicksResult() async {
    final moorClicks = (await select(clicks).get());
    return moorClicks.fold<int>(
      0,
      (sum, MoorClick click) => sum + click.change,
    );
  }

  @override
  Future<List<data.User>> getAllUsers() async =>
      (await select(users).get()).map<data.User>(toUser).toList();

  @override
  Future<List<data.Click>> getClicksForUser(data.User user) async {
    final selectableClicks = select(clicks)
      ..where((click) => click.userId.equals(user.id));
    return (await selectableClicks.get()).map<data.Click>(toClick).toList();
  }

  @override
  Future<void> ready() {
    into(users).insert(MoorUser(id: 1, name: 'McUser'));
    into(users).insert(MoorUser(id: 2, name: 'HomerSimpson'));
    into(users).insert(MoorUser(id: 3, name: 'RickSanchez'));
    return Future<void>.value();
  }

  @override
  Future<void> saveClick({required int change, required int userId}) =>
      into(clicks).insert(
        ClicksCompanion.insert(
          userId: userId,
          change: change,
          createdAt: Value<DateTime>(DateTime.now().toUtc()),
        ),
      );
}

@DataClassName("MoorUser")
class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 2, max: 32)();
}

@DataClassName("MoorClick")
class Clicks extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get userId => integer()();
  IntColumn get change => integer()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

data.User toUser(MoorUser user) => data.User(id: user.id, name: user.name);
data.Click toClick(MoorClick click) => data.Click(
      id: click.id,
      userId: click.userId,
      change: click.change,
      createdAt: click.createdAt,
    );
