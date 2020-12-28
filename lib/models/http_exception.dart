class HttpException implements Exception {
  final String messeage;

  HttpException(this.messeage);

  @override
  String toString() {
    return messeage;
    //return super.toString();
  }
}