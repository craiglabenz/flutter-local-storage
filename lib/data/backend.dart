import 'package:storage/data/data.dart';

/// Entrypoint to our data layer which is used by our state management solution.
///
/// Instances of this class implement [DataContract], as do all participants in
/// the data layer, and additionally accept a concrete implementation of
/// [DataContract], which knows how to fulfill requests against a given data
/// storage solution.
class DataBackend implements DataContract {
  const DataBackend({required DataContract delegate}) : _delegate = delegate;

  /// Swappable data loading layer.
  final DataContract _delegate;

  @override
  Future<void> ready() async => _delegate.ready();

  @override
  Future<int> clicksResult() => _delegate.clicksResult();

  @override
  Future<List<Click>> getClicksForUser(User user) =>
      _delegate.getClicksForUser(user);

  @override
  Future<void> saveClick({required int change, required int userId}) =>
      _delegate.saveClick(change: change, userId: userId);

  @override
  Future<List<User>> getAllUsers() => _delegate.getAllUsers();
}
