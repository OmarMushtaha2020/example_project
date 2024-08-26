// This is a single-line comment

/*
  This is a multi-line comment.
  It can span multiple lines.
*/

/**
 * This is a documentation comment.
 * It is used to document classes, functions, and variables.
 */

int ageFemale = 25; // Declaration and initialization: 'age' is declared as an integer and initialized with the value 25.

//int ageMan;     // Declaration
//ageMan = 25;    // Initialization

void main() {
// final  time=DateTime.now().day;
// const number=10;
  // Variables and Data Types
  // int age = 25;
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
  // Set<int> uniqueNumbers = {1, 2, 3, 3, 4, 5}; // The duplicate '3' will be removed
  //
  // // Printing variables
  // print('Name: $name');
  // print('Age: $age');
  // print('Height: $height');
  // print('Is Developer: $isDeveloper');
  // print('Languages: $languages');
  // print('Country Capitals: $countryCapital');
  // print('Unique Numbers: $uniqueNumbers');
  //
  // // Control Flow Statements
  // // if-else statement
  // if (age > 18) {
  //   print('$name is an adult.');
  // } else {
  //   print('$name is not an adult.');
  // }
  //
  // // switch-case statement
  // String day = 'Monday';
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
  // for (int i = 0; i < languages.length; i++) {
  //   print('I know ${languages[i]}.');
  // }
  //
  // // while loop
  // int count = 0;
  // while (count < 3) {
  //   print('Count is $count');
  //   count++;
  // }
  //
  // // do-while loop
  // int doCount = 0;
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
  Instrument instrument=Piano();
  instrument.play();



}

//

// Class Definition
class Person {
  // Instance variables (fields)
  String name; // Field to store the person's name.
  int age; // Field to store the person's age.

  // Constructor
  Person(this.name, this.age); // Initializes 'name' and 'age' with values provided when creating an instance of Person.

  // Method
  void introduce() { // Method to introduce the person.
    print('Hello, my name is $name and I am $age years old.'); // Prints a greeting message including the person's name and age.
  }
}

// Inheritance
class Employee extends Person { // 'Employee' class inherits from 'Person', meaning it gets 'name' and 'age' fields and the 'introduce' method.
  // Additional field specific to Employee
  String jobTitle; // Field to store the employee's job title.

  // Constructor with 'super' keyword to call the parent class constructor
  Employee(String name, int age, this.jobTitle) : super(name, age); // Initializes 'name', 'age', and 'jobTitle', calling the 'Person' constructor.

  // Overriding a method from the parent class
  @override
  void introduce() { // Overrides the 'introduce' method from the 'Person' class.
    super.introduce(); // Calls the 'introduce' method from the 'Person' class.
    print('I work as a $jobTitle.'); // Prints the job title of the employee.
  }
}

// Abstract Class
abstract class Vehicle { // 'Vehicle' is an abstract class that cannot be instantiated. It serves as a blueprint for other classes.
  // Abstract method (no implementation)
   abstract int ?num;
  void startEngine(); // Abstract method that must be implemented by any non-abstract subclass of 'Vehicle'.

  // Regular method
  void stopEngine() { // Provides a default implementation for stopping the engine.
    print('Engine stopped.'); // Prints a message indicating that the engine is stopped.
  }
}

// Subclass implementing an abstract method
class Car extends Vehicle { // 'Car' class extends 'Vehicle' and provides an implementation for the abstract method 'startEngine'.

  @override

  void startEngine() { // Provides the implementation for the 'startEngine' method.
    print('Car engine started.'); // Prints a message indicating that the car engine has started.
  }

  @override
  int? num =10;
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
class ElectricCar extends Car with Electric, GPS {} // 'ElectricCar' extends 'Car' and includes functionality from both 'Electric' and 'GPS' mixins.

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
  double width; // Field to store the width of the rectangle.
  double height; // Field to store the height of the rectangle.

  // Regular Constructor
  Rectangle(this.width, this.height); // Initializes 'width' and 'height' with provided values.

  // Named Constructor: Square
  Rectangle.square(double side) : width = side, height = side; // Initializes a square with equal width and height.

  // Method to calculate the area
  double area() { // Method to calculate the area of the rectangle.
    return width * height; // Returns the product of 'width' and 'height'.
  }

  // Method to display dimensions
  void displayDimensions() { // Method to display the dimensions of the rectangle.
    print('Width: $width, Height: $height'); // Prints the width and height of the rectangle.
  }
}

// Abstract class (interface)
abstract class Animal { // 'Animal' is an abstract class that serves as an interface for other classes.
  void makeSound(); // Abstract method that must be implemented by any class that implements 'Animal'.
}

// Implementing the interface
class Dog implements Animal { // 'Dog' class implements the 'Animal' interface, providing an implementation for 'makeSound'.

  @override
  void makeSound() { // Provides the implementation for the 'makeSound' method.
    print('Bark!'); // Prints 'Bark!', the sound a dog makes.
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

