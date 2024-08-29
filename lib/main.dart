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
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
// floatingActionButton: FloatingActionButton(onPressed: () {
//   print("object");
// },child: Text("o"),),
//       bottomNavigationBar: BottomNavigationBar(
//
//        items: [
//         BottomNavigationBarItem(icon: Icon(Icons.access_time_filled_sharp),label: "omar"),
//         BottomNavigationBarItem(icon: Icon(Icons.access_time_filled_sharp),label: "omar"),
//         BottomNavigationBarItem(icon: Icon(Icons.access_time_filled_sharp),label: "omar"),
//         BottomNavigationBarItem(icon: Icon(Icons.access_time_filled_sharp),label: "omar"),
//
//       ],),
// appBar: AppBar(
//   toolbarHeight: 50,
//   backgroundColor: Colors.blue,
//   leading: Icon(Icons.access_time_filled_sharp,color: Colors.cyanAccent,),
//   actions: [
//     Icon(Icons.cached,color: Colors.black,size: 40,),
//   ],
//   title: Text("Login Page",style:TextStyle(
//     fontSize: 40,
//     color: Colors.cyanAccent,
//   ) ,),
// ),

//   body: Center(
//     child: Text("omar",style: TextStyle(
//       fontSize: 20,
//       color: Colors.cyan,
//     ),),
//   ),
      //
//     body: Center(
//       child: Container(
//         height: 50,
//         width: 60,
//         color: Colors.orange,
//         child: const Center(child: Text("OMAR")
//         ),
//       ),
//     ),
      //
//       body: Container(
// width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text("data"),
//             SizedBox(child: Container(
//               width: double.infinity,
//               height: 1,
//               color: Colors.red,
//             ),),
//             // Spacer(),
//             Text("data"),
//
//           ],
//         ),
//       ),
//     body: Center(
//       child: Row(
//         children: [
//           Text("omar"),
//           Container(width: 50,height: 50,color: Colors.red,),
//           Spacer(),
//           Text("omar"),
//           SizedBox(width: 50,),
//           Text("omar"),
//           SizedBox(width: 50,),
//
//           Text("omar"),
//
//         ],
//       ),
//     ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //     height: 100,
            //     width: 100,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.only(
            //           topRight: Radius.circular(10),
            //           topLeft: Radius.circular(10)),
            //       color: Colors.red,
            //     )),
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
