extension StringExtension on String {
  String get toCapital => this[0].toUpperCase() + substring(1, length);
}
