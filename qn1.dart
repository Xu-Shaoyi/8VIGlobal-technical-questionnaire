import 'dart:math';

void main() {
  initializeArray();
}

void initializeArray() {
  var random = new Random();
  var array = [];
  for (var i = 0; i < 100; i++) {
    array.add(random.nextInt(100)); // generates random int from 0 to 99
  }
  print(array);
}
