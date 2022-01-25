import 'dart:collection';

void main() {
  var x = [
    [1, 2],
    [1, 3],
    [3, 4],
    [4, 5],
    [5, 6],
    [5, 7],
    [1, 7],
    [2, 8],
    [8, 9],
    [9, 11],
    [9, 10],
    [7, 10],
    [10, 12],
    [10, 14],
    [12, 13],
    [14, 15]
  ];
  shortestPath(x, 1, 15);
}

// uses Breadth-First Search to find the minimum number of hops
void shortestPath(List<List<int>> x, int start, int end) {
  var visited = Queue();
  var numOfHops = 0;

  for (var i = 0; i < x.length; i++) {
    if (x[i][0] == start) {
      visited.add(x[i]);
    }
  }
  visited.add(null); // null is used to track the number of hops

  while (visited.isNotEmpty) {
    var tuple = visited.removeFirst();
    if (tuple == null) {
      numOfHops++;
      visited.add(null);
    } else if (tuple[1] == 15) {
      print("Least number of hops from ID 1 to ID 15: ");
      print(numOfHops);
      return;
    } else {
      for (var i = 0; i < x.length; i++) {
        if (x[i][0] == tuple[1]) {
          visited.add(x[i]);
        }
      }
    }
  }
}
