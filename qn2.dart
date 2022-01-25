void main() {
  var x = [
    "2019-10-01",
    "2008-10-03",
    "2011-10-10",
    "2001-02-01",
    "1923-01-01"
  ];
  sortArray(x);
}

void sortArray(x) {
  // sorts date strings in descending order
  x.sort((a, b) {
    return DateTime.parse(b).compareTo(DateTime.parse(a));
  });
  print("Array of dates in decsending order: ");
  print(x);
}
