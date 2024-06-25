void main() {
  // ?, ??, !

  // late String university;
  int? myAge = null; // nullable int
  myAge = 30;
  // null
  print(myAge);

  String? myName;

  // if (myName == null) {
  //   print('Hello');
  // } else {
  //   print(myName);
  // }
  print(myName ?? 'Hello'); // default / soft unwrap
  
 // print(myName!); // force unwrap //error because of myName has no value

  myName = 'Hasib';
  print(myName);
  // print(university);
}