class NotMatchingPasswordException implements Exception {
  String cause;
  NotMatchingPasswordException(this.cause);
}