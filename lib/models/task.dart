class Task {
  final String name;
  bool isDone;

  //initializing
  Task({required this.name, this.isDone = false});
  void toggleDone() {
    isDone = !isDone;
  }
}
