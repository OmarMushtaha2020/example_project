

import 'package:flutter/material.dart';
//StatefulWidget life cycle:
// 1.createState In Flutter, createState is the method that is used to create the State object associated with the StatefulWidget. When you create a StatefulWidget, createState is called to create the object that manages the state of the StatefulWidget
//2.initState In Flutter, initState is a method used in the State object to specify the initial initialization process when the StatefulWidget is created. initState is called only once when the State object is first created, and before the interface is first rendered. This is the ideal place to perform any initial configurations or settings that require relying on the initial state of the StatefulWidget.
//3.build In Flutter, build is a basic method used in StatefulWidget and StatelessWidget to configure the UI. This method is used to build and assemble user interface elements that will be displayed on the screen.
//4.setState setState is one of the most important concepts in Flutter when working with StatefulWidget. Used to update the state of the StatefulWidget and rebuild the user interface (UI) based on changes in state. When setState is called, Flutter redraws the StatefulWidget and updates the interface to reflect the new changes.
//dispose Called when exiting the page.

// We will notice here that when you press the add button or the mins button, the mins or add method is called, which supplies or subtracts, and the counter number on the screen will change.
// This is because we use  StatefulWidget We use it when we want to have an interface that has interactions such as a counter
class CounterStatefulWidget extends StatefulWidget {
  @override
  State<CounterStatefulWidget> createState() => _CounterStatefulWidget();
}

class _CounterStatefulWidget extends State<CounterStatefulWidget> {
  int count=0;
  @override
  void initState() {
    // TODO: implement initState
    print("omar");
    super.initState();
  }
  void add(){
    setState(() {
      count++;
      print(count);
    });

  }

  void mins(){
    setState(() {
      count--;

      print(count);

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("CounterStatefulWidget"),
        backgroundColor: Colors.blue,
      ),

      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(onTap: (){
                  add();
//When calling the add method, it will go to the method and supply a counter and find setState there. It will supply a counter and then update the bulid method, so it will speak ui.
                },child: Container(width: 50,height: 50,color: Colors.red,child: Icon(Icons.add),)),
                SizedBox(width: 30,),

                Text("count: $count"),
                SizedBox(width: 30,),


                GestureDetector(onTap: (){

                  mins();//When calling the mins method, it will go to the method, it will decrement a counter, and it will find setState there, so it will decrement a counter, then it will update the bulid method, so it will speak ui.

                },child: Container(width: 50,height: 50,color: Colors.blue,child: Icon(Icons.minimize_sharp),)),

              ],
            ),
          ],
        ),
      ),
    );
  }
}