import 'package:storage/data/data.dart';

/// Establishes the base set of methods required of our data layer.
abstract class DataContract {
  /// Const constructor so that extending classes may use this in const classes.
  const DataContract();

  /// Loads all clicks and calculates their sum.
  Future<int> clicksResult();

  /// Loads all clicks submitted by the given user.
  Future<List<Click>> getClicksForUser(User user);

  /// Accepts and unsaved Click and persists it to the database.
  Future<void> saveClick({required int change, required int userId});

  /// Returns all known users.
  Future<List<User>> getAllUsers();

  /// Resolves when the implementing layer is ready for business.
  Future<void> ready();
}
