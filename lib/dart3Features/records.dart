// void main() {
//   final result = getMyData();
//   print(result.$1);
//   print(result.$2);
//   print(result.$3);
//   // It can get messy if the order changes.
// }

// (String, int, String) getMyData() {
//   return ("Anita", 25, "Bengaluru");
// }
//Lets Say we a a function and we want to pass diferent type of values to it.
//Keeping it dynamic will work but throws error when specific operation needs to be done.
//Becasue it takes the whole list to do the same operation.

// 1. List<String> getMeData(){
//   return ["Anita", 40, "Pandey"]
// } //Will throw error

// 2.
/* void main() {
  final result = getMeData();
  print(result);
}
List<dynamic> getMeData() {
  return ["Anita", 40, "Pandey"];
} // will not throw an error but in the runtime it might.
 */
//So we define a class and pass the data.

/* 
3. class UserData {
  final String name;
  final int age;
  final String address;
  UserData({required this.name, required this.age, required this.address});
} 
void main() {
  // final result = UserData(address: "Bengalur", name: "Anita", age: 25);
  final result = getMyData();
  print(result.age);
}

UserData getMyData() {
  return UserData(address: "Bengalur", name: "Anita", age: 25);
}

*/
//This aproach is better than dynamic, IMAGINE CREATING MULTIPLE DATA.
// We'll need to create multiple classes for the each data,it's bit taunting.
// so that's why we have records.
// Records are the way to group multiple values without need to define a class.
//They're super useful when you want to return multiple values from the function.

/* 
Approach 1.
void main() {
  final result = getMyData();
  print(result.$1);
  print(result.$2);
  print(result.$3);
  // It can get messy if the order changes.
}

(String, int, String) getMyData() {
  return ("Anita", 25, "Bengaluru");
} */
/* Approach 2.
void main() {
  final (name, ages, address) = getMyData();
  print(name);
  print(ages);
  print(address);
  // It can get messy if the order changes.
}

(String, int, String) getMyData() {
  return ("Anita", 25, "Bengaluru");
} */
void main() {
  final result = getMyData();
  print(result.name);
  print(result.address);
  print(result.age);
}

({String address, int age, String name}) //using ({}) curly braces
getMyData() {
  return (name: "Anita", age: 25, address: "Bengaluru");
}
