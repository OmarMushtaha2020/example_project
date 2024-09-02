import 'package:example_project/PageFour.dart';
import 'package:example_project/PageThree.dart';
import 'package:example_project/counter_stateful_widget.dart';
import 'package:example_project/counter_stateless_widget.dart';
import 'package:example_project/pageOne.dart';
import 'package:example_project/pageTwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// life cycle of an app
// 1.MyApp
// 2.MaterialApp
// 3. variable home inside MaterialApp(screen Which you want to run at)
// 4.Scaffold
void main() {
  //runApp  is a function that initializes the Flutter framework and inflates the given widget to the screen.
  // It's the entry point for any Flutter application and is typically used in the main() function of your Dart code.
  // runApp function take an widget
  runApp(MyApp());
}

//Widget It is divided into two types 1.StatelessWidget ,2.StatefulWidget
//Here MyApp extends StatelessWidget that mean  MyApp is  Widget
//StatelessWidget We use it when we want to have a fixed interface without any interactions
// StatefulWidget We use it when we want to have an interface that has interactions such as a counter
class MyApp extends StatelessWidget {
// Widget build is abstract in class StatelessWidget So you should override it
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      //debugShowCheckedModeBanner is a variable inside MaterialApp that takes the value of bool and its function is to remove a red bar.

      home: PageFour(),
      // home take an widget
    );
  }
}

class LoginPage extends StatelessWidget {
//LoginPage is widget
  @override
  Widget build(BuildContext context) {
    // Scaffold It is the frame of the page in which we put everything
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed , // This is all you need!

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "omar"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "as"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "omar"),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        //floatingActionButton is a Scaffold widget property used to add a Floating Action Button to the user interface. A floating button is a user interface element that can perform a specific action when pressed, usually used to provide quick access to an important action.

        onPressed: () {},
        //onPressed void Function abstract You have to do it override

        child: const Icon(Icons
            .add), //child is part of the definition of a FloatingActionButton or any other widget, and is used to specify the content to be displayed within the element. In this context, Icon is a widget used to display icons from the icon library available in Flutter.
      ),

      // Inside Scaffold there is a variable of type appBar that takes the value AppBar(),
      appBar: AppBar(
        toolbarHeight: 90,
        //toolbarHeight is a variable inside the AppBar to change the size of the AppBar

        leading: const Icon(
          //Leading is an option in the AppBar to place the widget to the left of the AppBar

          Icons.add,
        ),
        // Icon() is a widget in Filters In order to display icon
        actions: [
          //It is an option in the AppBar to place the widget to the right of the AppBar so that it takes list<widget>

          const Text("data"),
          const Icon(
            Icons.safety_check,
            size:
                60, //size It is an option in the icon to change the size of the icon
          ),
        ],

        backgroundColor: Colors.blue,
        //backgroundColor is a variable to change the color of the AppBar

        title: const Text(
          // Text("") is a widget to display text inside it, which takes mandatory text

          "omar",
          //style is a variable inside text that takes the value of TextStyle() In order to play with the text properties in terms of size, color and...
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
      body: Column(
        //Column A widget to place a group of list<widget> vertically

        //crossAxisAlignment: CrossAxisAlignment.center is a property used in Row or Column widgets in Flutter to specify how children are aligned on the cross axis.
        //
        // clarification:
        // If using Column: the transverse axis is horizontal (from left to right).
        // If using Row: The transverse axis is vertical (top to bottom).
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center is a property used in Row or Column in Flutter to specify how space is distributed among elements (children) on the main axis.
        //
        // clarification:
        // If using Column: The major axis is vertical (top to bottom).
        children: [
          const Text("omar"),
          Container(
            width: double.infinity,
            color: Colors.red,
            height: 50,
            // child It is a variable in the Container that takes a widget to display inside the Container
            child: Center(child: Text("omar")//          //Center is a widget in Flutter that is used to center another widget within its container. Center places the scrolled item in the center of the horizontal and vertical axis of the container.

            ),
          ),

          const SizedBox(
            height: 20,
          ),
          // SizedBox() is a widget in Flutter that is used to create empty space or specify a specific size for elements. It can be useful in many cases where you need to add fixed spacing between elements or specify specific dimensions for an element. Within it, you can specify the length, Within it, you can specify the length, width, or child: take a widget
          Container(
            width: 100,
            //It is variable width In order to play in size Container
            height: 100,
            //It is variable height In order to play in size Container
            //decoration: BoxDecoration is a Container property in Flutter that is used to apply visual decoration to the Container, such as setting a background, adding borders, shading, or making corners rounded.
            decoration: const BoxDecoration(
                //color is a variable to change the color of the Container
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )
                //borderRadius: BorderRadius.only(...) is a property used to customize the curvature of certain corners of a container individually instead of making all corners the same. In my example, only the top corners are bent, while the bottom corners remain unbent.

                ),
          ),
          //In Flutter, the Container is one of the most important widgets used to build user interfaces. A container is a container that can be used to collect other items

          const Spacer(),
          //Spacer() is a widget in Flutter that is used to fill the empty space between Row, Column elements. Spacer is placed between items to create flexible spacing between them, which helps distribute items evenly or fill spaces between them.

          Container(
            width: 100,
            //It is variable width In order to play in size Container
            height: 100,
            //It is variable height In order to play in size Container
            //decoration: BoxDecoration is a Container property in Flutter that is used to apply visual decoration to the Container, such as setting a background, adding borders, shading, or making corners rounded.
            decoration: BoxDecoration(
              //color is a variable to change the color of the Container
              color: Colors.blue,
              borderRadius: BorderRadius.circular(
                  20), //borderRadius: BorderRadius.circular(int value) is a property within BoxDecoration used to specify the curvature of the container's corners. In this case, all corners are assigned a slight curvature of 2.0 pixels, which means the corners will be slightly rounded.
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            child: Container(
              height: 5,
              width: 200,
              color: Colors.red,
            ),
          ),
          //In this example, we did not specify the length or height of the SizedBox, but rather we specified the child of the widget type, which is Container.
          SizedBox(
            height: 30,
          ),

          Row(
            // row A widget to place an array of List <widget> horizontally

            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "ali",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                width: 30,
              ),
              const Text(
                "omar",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                width: 30,
              ),

              GestureDetector(              //GestureDetector is a widget in Flutter that is used to detect touch actions and gestures like tap, drag, swipe, etc. It can be used to encapsulate any other widget and enable it to respond to touch interactions.

              onTap: () {
                    print("object");
                  }
                  //void Function abstract You have to do it override
                  ,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  )),
            ],
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
