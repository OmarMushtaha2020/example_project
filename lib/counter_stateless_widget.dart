import 'package:flutter/material.dart';
// We will notice here that when you press the add button or the mins button, the mins or add method is called, which supplies or subtracts a number, but it will change in the console and the counter number on the screen will not change. This is because we use StatelessWidget, as we said. StatelessWidget We use it when we want to have a static interface without any interactions



class CounterStatelessWidget extends StatelessWidget {
  @override
  int count=0;

  void add(){
      count++;
      print(count);

  }

  void mins(){
      count--;

      print(count);

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
appBar: AppBar(
  title: Text("CounterStatelessWidget"),
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

                },child: Container(width: 50,height: 50,color: Colors.red,child: Icon(Icons.add),)),
                SizedBox(width: 30,),

                Text("count: $count"),
                SizedBox(width: 30,),


                GestureDetector(onTap: (){

                  mins();
                },child: Container(width: 50,height: 50,color: Colors.blue,child: Icon(Icons.minimize_sharp),)),

              ],
            ),
          ],
        ),
      ),
    );
  }
}