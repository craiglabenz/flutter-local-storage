// import 'package:sqflite/sqflite.dart';
// import 'package:storage/data/data.dart';

// class Sqflite extends DataContract {
//   late Database db;

//   @override
//   Future<int> clicksResult() async {
//     int _count = 0;
//     for (final result in await db.query('Clicks')) {
//       _count += result['change'] as int;
//     }
//     return _count;
//   }

//   @override
//   Future<List<User>> getAllUsers() async {
//     return (await db.query('Users'))
//         .map<User>((result) => User.fromJson(result))
//         .toList();
//   }

//   @override
//   Future<List<Click>> getClicksForUser(User user) async =>
//       (await db.query('Clicks', where: 'userId = ?', whereArgs: [user.id]))
//           .map<Click>((result) => Click.fromJson(result))
//           .toList();

//   @override
//   Future<void> ready() async {
//     db = await openDatabase('my_db_2.db', version: 1,
//         onCreate: (db, version) async {
//       await db.execute(
//           'CREATE TABLE Clicks (id INTEGER PRIMARY KEY, change INTEGER, userId INTEGER, createdAt datetime default current_timestamp)');
//       await db
//           .execute('CREATE TABLE Users (id INTEGER PRIMARY KEY, name VARCHAR)');
//       await db.insert('Users', {'id': 1, 'name': 'McUser'});
//       await db.insert('Users', {'id': 2, 'name': 'HomerSimpson'});
//       await db.insert('Users', {'id': 3, 'name': 'RickSanchez'});
//     });
//     return Future<void>.value();
//   }

//   @override
//   Future<void> saveClick({required int change, required int userId}) async =>
//       db.insert('Clicks', {'change': change, 'userId': userId});
// }
