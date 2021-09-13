import 'package:moor/moor_web.dart';

import 'moor_interface.dart';

MoorDelegate constructDb({bool logStatements = false}) {
  return MoorDelegate(WebDatabase('db', logStatements: logStatements));
}
