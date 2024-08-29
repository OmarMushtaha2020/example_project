// This is a single-line comment

/*
  This is a multi-line comment.
  It can span multiple lines.
*/

/*
 * This is a documentation comment.
 * It is used to document classes, functions, and variables.
 */

//int ageFemale = 25; // Declaration and initialization: 'age' is declared as an integer and initialized with the value 25.
//int ageMan;     // Declaration
//ageMan = 25;    // Initialization


// final  time=DateTime.now().day;
// const number=10;
// void sum({int? num1, int? num2}){
//   print("hello world");
//   int sumNum=num1!+num2!;
//   print(sumNum);
//
// }
// String multiply(int x, int y) => "x * y";
//
// String ?login({ name}){
//   return "$name";
// }
void main() {
  Instrument instrument =Piano();
  instrument.play();

  // ElectricCar car =ElectricCar();
  // Car car=Car();
  // car.num=10;
  // print(car.num);
  // car.startEngine();
  // Person person =Person.personThree("omar", 20,40);
  // print(person.age);
  // print(person.name);
  // print(person.width);
  // person.introduce();
  // Employee employee =Employee("omar",20,"Flutter");
  // print(employee.age);
  // print(employee.name);
  // employee.introduce();


// var  num=[1,2];
//
// dynamic num1=[1,2];
// num1=2;
// print(num1);
// print(num);

// final  time=DateTime.now().day;

// const  date=DateTime.now().day;




  // sum(num2: 4,num1: 3);
 //  String name=login( name: "omar")!;
 //  String num=multiply(2,2);
 //  print(num);
  // print(name);
  // Variables and Data Types
  // int age = 18;
  // double height = 5.9;
  // String name = 'Omar';
  // bool isDeveloper = true;
  //

  // List<String> languages = ['Dart', 'Flutter', 'JavaScript'];
  // Map<String, String> countryCapital = {
  //   'Egypt': 'Cairo',
  //   'USA': 'Washington D.C.',
  //   'Japan': 'Tokyo'
  // };
  //
  // Set<int> uniqueNumbers = {1, 2, 3, 3, 4, 5};
  // //
  // // // Printing variables
  // print("name $name");
  // print('Name $name');
  // print('Age: ${age+2}');
  // print('Height: $height');
  // print('Is Developer: $isDeveloper');
  // print('Languages: $languages');
  // print('Country Capitals: ${countryCapital['Egypt']}');
  // print('Unique Numbers: $uniqueNumbers');
  //

  // // Control Flow Statements
  // if-else statement
  //
  // if (age != 18) {
  //   print('$name is an adult.');
  // } else if(age>=18) {
  //   print('$name is an adult.');
  // }else{
  //   print('$name is  not an adult.');
  // }

  //
  // // switch-case statement
  // String day = 'yyy';
  // switch (day) {
  //   case 'Monday':
  //     print('Start of the work week.');
  //     break;
  //   case 'Friday':
  //     print('Almost the weekend!');
  //     break;
  //   default:
  //     print('Another day.');
  // }
  //
  // // for loop
  // for(int num=10;num>0;num--){
  //   print(num);
  // }
  // for (int i = 0; i < languages.length; i++) {
  //   print('I know ${languages[i]}.');
  // }

  // // while loop
  // int count = 0;
  // while (5 < 5) {
  //   print('Count is $count');
  //   count++;
  // }
  //
  // do-while loop
  //   int doCount = 0;
  // do {
  //   print('Do count is $doCount');
  //   doCount++;
  // } while (doCount < 3);
  //

  // // Functions
  // // Basic function
  // int add(int a, int b) {
  //   return a + b;
  // }

  //
  // // Function with optional and named parameters
  // String greet(String name, {String prefix = 'Mr./Ms.', String suffix = '!'}) {
  //   return 'Hello, $prefix $name$suffix';
  // }
  //
  // // Arrow function (a concise way to define functions)
  // int multiply(int x, int y) => x * y;
  //
  // // Calling functions
  // print('Addition: ${add(3, 4)}');
  // print(greet('Omar'));
  // print(greet('Omar', prefix: 'Dr.', suffix: '!!'));
  // print('Multiplication: ${multiply(5, 4)}');
  // Instrument instrument=Piano();
  // instrument.play();



  // Map<String, dynamic> userData = {
  //   'name': 'Alice',
  //   'age': 30,
  //   'email': 'alice@example.com',
  //   'isAdmin': true
  // };
  //
  // // Format and print the map
  // print('User Data:');
  // userData.forEach((key, value) {
  //   print('$key: $value');
  // });
  // List<int> numbers = [10, 20, 30, 40, 50];
  //
  // // Format and print the list
  // print('List of Numbers:');
  // for (int number in numbers) {
  //   print('Number: $number');
  // }
  //
  // Map<String, dynamic> userData = {
  //   'name': 'Alice',
  //   'age': 30,
  //   'email': 'alice@example.com',
  //   'isAdmin': true
  // };
  //
  // // Convert the map entries to a list
  // List<MapEntry<String, dynamic>> entries = userData.entries.toList();
  //
  // // Format and print the map using an indexed for loop
  // print('User Data:');
  // for (int i = 0; i < entries.length; i++) {
  //   print('${entries[i].key}: ${entries[i].value}');
  // }
}

//

// Class Definition
// class Person {
//   // Instance variables (fields)
//   String ?name; // Field to store the person's name.
//   int? age; // Field to store the person's age.
// int? width;
//   // Constructor
//   Person(name,age){
//     this.name=name;
//     this.age=age;
//   } // Initializes 'name' and 'age' with values provided when creating an instance of Person.
// Person.personOne(name,age){
//   this.name=name;
//   this.age=age;
// }
//   Person.personTwo(name,age){
//     this.name=name;
//     this.age=age;
//   }
//   Person.personThree(name,age,width){
//     this.name=name;
//     this.age=age;
//     this.width=width;
//   }
//
//   void introduce() { // Method to introduce the person.
//     print('Hello, my name is $name and I am $age years old.'); // Prints a greeting message including the person's name and age.
//   }
// }
// class Product{
//
// }
//
//
// // Inheritance
// class Employee extends Person { // 'Employee' class inherits from 'Person', meaning it gets 'name' and 'age' fields and the 'introduce' method.
//   // Additional field specific to Employee
//   String jobTitle; // Field to store the employee's job title.
//
//   // Constructor with 'super' keyword to call the parent class constructor
//   Employee(String name, int age, this.jobTitle) : super(name, age); // Initializes 'name', 'age', and 'jobTitle', calling the 'Person' constructor.
//
//   // Overriding a method from the parent class
//   @override
//   void introduce() {
//     // TODO: implement introduce
//     super.introduce();
//   }
//
//
// }

// Abstract Class
abstract class Vehicle { // 'Vehicle' is an abstract class that cannot be instantiated. It serves as a blueprint for other classes.
  // Abstract method (no implementation)
  int num1=10;
   abstract int ?num;
  void startEngine(); // Abstract method that must be implemented by any non-abstract subclass of 'Vehicle'.

  // Regular method
  void stopEngine() { // Provides a default implementation for stopping the engine.
    print('Engine stopped.'); // Prints a message indicating that the engine is stopped.
  }
}

// Subclass implementing an abstract method
class Car extends Vehicle {
  @override
  int? num;

  @override
  void startEngine() {
    // TODO: implement startEngine
    print("omar");
  } // 'Car' class extends 'Vehicle' and provides an implementation for the abstract method 'startEngine'.


}

// Mixin
mixin Electric { // 'Electric' is a mixin that adds electric functionality to other classes.
  void chargeBattery() { // Method to charge the battery.
    print('Battery is charging.'); // Prints a message indicating that the battery is charging.
  }
}

// Another mixin
mixin GPS { // 'GPS' is a mixin that adds GPS functionality to other classes.
  void navigate() { // Method to navigate to a destination.
    print('Navigating to destination.'); // Prints a message indicating navigation.
  }
}

// Combining mixins with inheritance
class ElectricCar extends Car with Electric, GPS {
  @override
  void chargeBattery() {
    // TODO: implement chargeBattery
    super.chargeBattery();
  }
  @override
  void navigate() {
    // TODO: implement navigate
    super.navigate();
  }
} // 'ElectricCar' extends 'Car' and includes functionality from both 'Electric' and 'GPS' mixins.

class Calculator {
  // Static variable
  static const double pi = 3.14159; // 'pi' is a constant value used for calculations, shared across all instances of 'Calculator'.

  // Static method
  static double calculateAreaOfCircle(double radius) { // Static method to calculate the area of a circle.
    return pi * radius * radius; // Uses 'pi' to calculate and return the area of the circle.
  }
}

class Rectangle {
  // Fields
  double? width; // Field to store the width of the rectangle.
  double? height; // Field to store the height of the rectangle.

  // Regular Constructor
  Rectangle(this.width, this.height); // Initializes 'width' and 'height' with provided values.

  // Named Constructor: Square
  Rectangle.omar(width,height){
    this.height=height;
    this.width=width;
  } // Initializes a square with equal width and height.

  // Method to calculate the area
  double area() { // Method to calculate the area of the rectangle.
    return width! * height!; // Returns the product of 'width' and 'height'.
  }

  // Method to display dimensions
  void displayDimensions() { // Method to display the dimensions of the rectangle.
    print('Width: $width, Height: $height'); // Prints the width and height of the rectangle.
  }
}

// Abstract class (interface)
abstract class Animal { // 'Animal' is an abstract class that serves as an interface for other classes.
  void makeSound();

  // Abstract method that must be implemented by any class that implements 'Animal'.
}
abstract class Animals { // 'Animal' is an abstract class that serves as an interface for other classes.
  void make();

// Abstract method that must be implemented by any class that implements 'Animal'.
}
// Implementing the interface
class Dog implements Animal,Animals { // 'Dog' class implements the 'Animal' interface, providing an implementation for 'makeSound'.

  @override
  void makeSound() { // Provides the implementation for the 'makeSound' method.
    print('Bark!'); // Prints 'Bark!', the sound a dog makes.
  }

  @override
  void make() {
    // TODO: implement make
  }

}

class Cat implements Animal { // 'Cat' class implements the 'Animal' interface, providing an implementation for 'makeSound'.
  @override
  void makeSound() { // Provides the implementation for the 'makeSound' method.
    print('Meow!'); // Prints 'Meow!', the sound a cat makes.
  }
}




// Base class
class Instrument {
  void play() { // Method to play the instrument.
    print('Playing a generic instrument sound'); // Prints a generic sound message for any instrument.
  }
}

// Derived class - Guitar
class Guitar extends Instrument { // 'Guitar' class extends 'Instrument', inheriting its methods and adding specific behavior.
  @override
  void play() { // Overrides the 'play' method to provide specific behavior for the guitar.
    print('Strumming the guitar'); // Prints the sound of playing the guitar.
  }
}

// Derived class - Piano
class Piano extends Instrument { // 'Piano' class extends 'Instrument', inheriting its methods and adding specific behavior.
  @override
  void play() { // Overrides the 'play' method to provide specific behavior for the piano.
    print('Playing the piano keys'); // Prints the sound of playing the piano.
  }
}
//



class Animali {
  static String defaultName = 'Default Animal Name'; // Static variable
  String name;

  // Constructor with default value from static variable
  Animali({String? name}) : this.name = name ?? Animali.defaultName;

  void speak() {
    print('$name makes a sound');
  }
}

class Dogs extends Animali {
  Dogs() : super();  // Inherits the default name from Animal

  @override
  void speak() {
    print('$name barks');
  }
}


// Map<String, int> myMap = {
//   'key1': 10,
//   'key2': 20,
//   'key3': 30
// };
//
// // Print the original map
// print('Original map: $myMap');
//
// // Clear the map using a for-in loop
// for (var entry in myMap.entries) {
// print('Key: ${entry.key}, Value: ${entry.value}');
// myMap.remove(entry.key);
// }
//
// // Print the cleared map
// print('Cleared map: $myMap');
// }

// Map<String, int> myMap = {
//   'key1': 10,
//   'key2': 20,
//   'key3': 30
// };
//
// // Print the original map
// print('Original map: $myMap');
//
// // Clear the map using a for-in loop
// for (var key in myMap.keys.toList()) {
//   myMap.remove(key);
// }
//
// // Print the cleared map
// print('Cleared map: $myMap');
// Creating a map
// Map<String, int> myMap = {
//   'a': 1,
//   'b': 2,
//   'c': 3,
//   'd': 4
// };
//
// print('Original Map: $myMap');
//
// // Step 2: Destroy the map using a `for` loop
// // Collect keys to remove them from the map
// List<String> keys = myMap.keys.toList();
// for (String key in keys) {
// myMap.remove(key);
// print('After removing $key: $myMap');
// }
//
// // Final state of the map
// print('Final Map: $myMap');