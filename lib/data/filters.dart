enum WhereType { equals, greaterThan, lessThan, contains }

class Where {
  const Where({
    required this.fieldName,
    required this.value,
    this.type = WhereType.equals,
  });
  final String fieldName;
  final Object value;
  final WhereType type;
}
