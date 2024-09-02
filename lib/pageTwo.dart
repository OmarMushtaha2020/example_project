
import 'package:example_project/PageFour.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>PageFour()), (route) => false);

      },),
      appBar: AppBar(

        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Stack(

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 50),
              child: Container(

                height: 400,width: 400,color: Colors.cyan,
              ),
            ),
            Positioned(
              top: 50,
              left: 100,
bottom: 50,
              child: Container(
              
                height: 200,width: 200,color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
