
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.canPop(context);
      },),
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              child: ListView.separated(shrinkWrap: true,scrollDirection: Axis.horizontal,physics: BouncingScrollPhysics(),itemBuilder: (context,index)=>Image.asset("assets/image/imageOne.png",width: 40,height: 40,),itemCount: 10, separatorBuilder: (BuildContext context, int index) =>Container(
                width: 10,
                height: 5,
                color: Colors.cyan,
              )),
            ),
        
            ListView.separated(shrinkWrap: true,scrollDirection: Axis.vertical,physics: BouncingScrollPhysics(),itemBuilder: (context,index)=>Image.asset("assets/image/imageOne.png"),itemCount: 10, separatorBuilder: (BuildContext context, int index) =>Container(
              width: double.infinity,
              height: 10,
              color: Colors.cyan,
            )),
          ],
        ),
      )
    );
  }
}
