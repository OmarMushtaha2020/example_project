import 'package:example_project/PageThree.dart';
import 'package:example_project/pageOne.dart';
import 'package:example_project/pageTwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageFour extends StatelessWidget {
  var form = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller,
                obscureText: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "name mustnt be empty";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: "write name",
                  label: Text("name"),
                  icon: Icon(
                    Icons.cabin,
                    size: 20,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Opacity(
                opacity: 0.90,
                child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.blue,
                    child: MaterialButton(
                      onPressed: () {
                        if (form.currentState!.validate()) {
                          print("${controller?.text}");
                        }
                      },
                      child: Text("login"),
                    )),
              ),
              SizedBox(height: 50,),
              Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PageOne("omar")));
                    },child: Text("PageOne"),
                  )),
              SizedBox(height: 50,),
              Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>PageTwo()), (route) => false);
                    },child: Text("PageTwo"),
                  )),
              SizedBox(height: 50,),
              Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PageThree()));
                    },child: Text("PageThree"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
