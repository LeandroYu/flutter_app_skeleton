abstract class Environment<T> {
  Future<void> init();
  T? get properties;
}
