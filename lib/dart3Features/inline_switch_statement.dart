void main() {
  int number = 352;
  final result = switch (number) {
    0 => 'number is 0',
    1 => 'number is 1',
    2 => 'number is 2',
    _ => 'not sure',
  };
  print(result);
}
