abstract class Usecase<Input, Output> {
  Future<Output> call({required Input params});
}

class NoParams {
  const NoParams();
}
