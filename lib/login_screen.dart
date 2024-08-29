
import 'package:example_project/main.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
int index=0;
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap: (){
          Navigator.pushReplacementNamed(context, '/home');

        },child: Icon(Icons.add)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter++;

          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            counter!=0 ?Text("data"):Container(),

            Text(" number $counter",style: TextStyle(
              fontSize: 50,
            ),),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        iconSize: 50,
        selectedIconTheme: IconThemeData(
          color: Colors.blue
        ),
        onTap: (value){
          setState(() {
            changeValue(value);

          });

        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "S"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "S"),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm_outlined),label: "S"),

        ],
      ),
      bottomSheet: Container( color: Colors.blue,
        height: 50,

      ),
    );
  }
  changeValue(int value){
    setState(() {
      index=value;
print(index);
    });
  }
}
