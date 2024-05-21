abstract class Failure {
  const Failure({this.message});
  final String? message;
}

class ServerError extends Failure {
  const ServerError({super.message});
}

class ExpiredTokenError extends Failure {
  const ExpiredTokenError({super.message});
}
