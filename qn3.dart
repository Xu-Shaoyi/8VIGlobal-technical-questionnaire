void main() {
  // strings are converted to raw strings to enable backslash
  var x = [
    r'<r><a z=\"3\"><a z=\"2\"></r>',
    r'<r><a z=\"1\"><a z=\"2\"></r>',
    r'<r><a z=\"4\"><a z=\"2\"></r>'
  ];
  findUniqueAttribute(x);
}

void findUniqueAttribute(x) {
  var zAttributes = [];

  for (var i = 0; i < x.length; i++) {
    var zIndex = 0;

    // extract all z attributes from array x
    do {
      zIndex = x[i].indexOf("z", zIndex + 1);
      var spaceIndex = x[i].indexOf(" ", zIndex + 1);
      if (spaceIndex == -1) {
        spaceIndex = x[i].length - 1;
      }
      if (zIndex != -1) {
        zAttributes.add(x[i].substring(zIndex, spaceIndex + 1));
      }
    } while (zIndex != -1);
  }

  // remove duplicates from zAttributes array
  var check = Set<String>();
  List<dynamic> uniqueAttributes =
      zAttributes.where((string) => check.add(string)).toList();

  print("The unique attributes of z are:");
  uniqueAttributes.forEach((element) {
    print(element);
  });
}
