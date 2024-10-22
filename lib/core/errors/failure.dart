abstract class Failure {
  String errMessage;
  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});
}

class LocalFailure extends Failure {
  LocalFailure({required super.errMessage});
}
