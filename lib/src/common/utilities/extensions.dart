extension GetDate on String {
  String get getDate {
    DateTime dateTime = DateTime.parse(this);
    return "${dateTime.day}-${dateTime.month}-${dateTime.year}";
  }
}
