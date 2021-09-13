import 'dart:math';
import 'package:flutter/material.dart';
import 'package:storage/data/data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final db = DataBackend(
    // delegate: Sqflite(),
    delegate: constructDb(),
  );
  await db.ready();
  runApp(MyApp(db: db));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.db, Key? key}) : super(key: key);

  final DataBackend db;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page', db: db),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.db, required this.title, Key? key})
      : super(key: key);

  final String title;
  final DataBackend db;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<User> _users = [];
  Random random = Random();

  /// Returns 1, 2 or 3.
  int getRandomUserId() => random.nextInt(3) + 1;

  @override
  void initState() {
    super.initState();
    loadClicks();
    _updateUsers();
  }

  Future<void> loadClicks() async {
    print(DateTime.now());
    int _previousCount = await widget.db.clicksResult();
    print(DateTime.now());
    setState(() => _counter = _previousCount);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    widget.db.saveClick(change: 1, userId: getRandomUserId());
    _updateUsers();
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
    widget.db.saveClick(change: -1, userId: getRandomUserId());
    _updateUsers();
  }

  Future<void> _updateUsers() async {
    _users = await widget.db.getAllUsers();
    print('_users: $_users');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: _decrementCounter),
                IconButton(
                    icon: const Icon(Icons.add), onPressed: _incrementCounter),
              ],
            ),
            ..._users
                .map<_UserPageButton>(
                  (user) => _UserPageButton(user, db: widget.db),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}

class _UserPageButton extends StatelessWidget {
  const _UserPageButton(this.user, {required this.db, Key? key})
      : super(key: key);

  final DataBackend db;
  final User user;

  Future<void> _onPressed(BuildContext context) async {
    final clicks = await db.getClicksForUser(user);
    Navigator.of(context).push<void>(
      MaterialPageRoute<void>(
        builder: (BuildContext context) =>
            UserClicksPage(user: user, clicks: clicks),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () => _onPressed(context),
        child: Text('See clicks from ${user.name}'),
      );
}

class UserClicksPage extends StatelessWidget {
  const UserClicksPage({required this.user, required this.clicks, Key? key})
      : super(key: key);

  final User user;
  final List<Click> clicks;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(user.name)),
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  'Clicks for ${user.name}',
                  style: Theme.of(context).textTheme.headline4,
                ),
                for (final click in clicks)
                  Text(
                    '${click.change > 0 ? "👍" : "👎"} at ${click.createdAt.toLocal()}',
                    style: Theme.of(context).textTheme.headline5,
                  ),
              ],
            ),
          ),
        ),
      );
}
