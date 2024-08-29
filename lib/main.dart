import 'package:example_project/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StatefulWidget Lifecycle Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home':(context)=>HomeScreen(),
        '/login':(context)=>LoginScreen(),
      },
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
int counter = 0;

class _HomeScreenState extends State<HomeScreen> {
  String _message = "Welcome!";

  @override
  void initState() {
    super.initState();

    print("HomeScreen: initState");
    // Initialization code, e.g., setting up a timer or fetching data
    _message = "Counter initialized!";
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _message="omar";
    print("message: ${_message}");
    // This method is called when dependencies change, e.g., if you use InheritedWidget
  }

  @override
  Widget build(BuildContext context) {
    print("HomeScreen: build");
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushReplacementNamed(context, '/login');

      },child: Icon(Icons.add),),
      appBar: AppBar(
        title: Text('StatefulWidget Lifecycle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _message,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Counter: $counter',
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

                setState(() {
                  counter++;
                  _message = "Counter incremented!";
                });
              },
              child: Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    print("HomeScreen: dispose");
    super.dispose();  // Important to call this method to clean up resources

    // Cleanup code, e.g., cancelling timers or disposing of controllers
  }
}
