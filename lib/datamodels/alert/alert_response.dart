class AlertResponse {
  final String fieldOne;
  final String fieldTwo;
  final bool confirmed;
  bool canceled;

  AlertResponse({
    this.fieldOne,
    this.fieldTwo,
    this.confirmed,
    this.canceled,
  });
}