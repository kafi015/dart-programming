import 'dart:io';

void main() {
  
  // try catch
  try {
    // throw MyException();
    String input = '34 i';
    int parsedValue = int.parse(input);
    print(parsedValue);
  } on MyException { // MyException Created by me with the help of Custom Class Handling Process
    print('This is my exception');
  }  on SocketException {
    print('This is a socket exception');
  } on FormatException {
    print('This is a format exception');
  } catch (e) {
    print(e.toString());
    print('You have faced an runtime error');
  } finally { // It always execute
    print('finally');
  }

  print('Hello world');
}

//MyException Created by Developer
class MyException implements Exception {
  @override
  String toString() {
    return 'This is my exception';
  }
}