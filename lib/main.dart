import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Custom-Form",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  final gbk = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("CustomForm"),
      ),
      body: Form(
          key: gbk,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Enter Username : "),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    fillColor: Colors.red,
                    focusColor: Colors.black,
                    hoverColor: Colors.green,
                    //  helperText:"Include String and numeric"
                    // hintText: "Username",
                    // hintStyle: TextStyle(color: Colors.red),
                    //  icon: Icon(Icons.person),
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.text_fields),
                    //   icon: Icon(Icons.email),
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.deepOrange),
                    hintMaxLines: 2,
                    helperMaxLines: 2,
                    //  prefixText: "Username :  ",
                    // suffixText: "@gmail.com",
                    //counterText: "Your Username is "),
                  ),
                ),
                //  TextFormField(),
              ],
            ),
          )),
    );
  }
}
