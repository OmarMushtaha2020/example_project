
import 'package:example_project/counter_stateful_widget.dart';
import 'package:example_project/counter_stateless_widget.dart';
import 'package:example_project/main.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  String ?name;
  PageOne(name){
    this.name=name;
    print(name);
  }
  @override
  State<PageOne> createState() => _PageOneState(name);
}

class _PageOneState extends State<PageOne> {
  String ?name;

  _PageOneState(this.name);
void changeIndex(int value){
  setState(() {
    index=value;
    print(index);
  });

}

int index=0;

List<Widget>page=[
  LoginPage(),
  CounterStatefulWidget(),
  CounterStatelessWidget(),
  LoginPage(),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap:(int value){
          changeIndex(value);
        },
        type: BottomNavigationBarType.fixed,
currentIndex: index,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.call),label: "call"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),

      ],),
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      // body: Column(
      //   children: [
      //     Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1dzAY9vxSYgd7Zz6Aji9j2-LaG3-BF5iw5w&s",width: double.infinity,height: 100,fit: BoxFit.fitWidth,),
      //     Image.asset("assets/image/imageOne.png",width: double.infinity,height: 100,fit: BoxFit.fitWidth,),
      //
      //   ],
      // ),
      body: page[index],
    );
  }
}
