/* void main() {
  final listOfNum = [1, 3, 2];
  final [first, third, second] = listOfNum;
  final listOfMoreNum = [1, 2, 3, 4, 5, 6];
  // final [one, two, three] = listOfMoreNum; //THis throws error while printing.
  // final [one, two, three, ...] =
  //     listOfMoreNum; //using spread operator to fix it.
  //What if you want to skip an item. use _ underscore instead.

  final [one, _, three, ...] = listOfMoreNum;
  print(one);
  // print(two);
  print(three);
  print(first);
  print(second);
  print(third);
  // o/p: 1, 2, 3 => This is called pattern matching in dart.
} */

// Screnario 2. Extracting values from json

void main() {
  final userJson = {'id': 1, 'name': "Anita", 'age': 25};
  /*   // In Dart 2

  final id = userJson['id'];
  print(id);
  final name = userJson['name'];
  print(name);
*/
  /*   //Using pattern
  final {'id': id, 'name': name, 'age': age} = userJson;
  print(id);
  print(name);
  print(age);
  //this approah work bust has an issue, 
  //if the data comes from the backend we might not know the type, which can throw error.
  // for eg: */
  /*   if (userJson case {'id': int id, 'name': String name, 'age': int age}) {
    print(id);
    print(name);
    print(age);
  } else {
    print("Incorrect Json");
  } */
  switch (userJson) {
    case {'id': int id, 'name': String name, 'age': int age}:
      print(id);
      print(name);
      print(age);

    default:
      print("Not valid");
  }
}
