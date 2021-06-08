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
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    fillColor: Colors.red,
                    focusColor: Colors.black,
                    hoverColor: Colors.green,
                    /*      helperText:"Include String and numeric"
                     hintText: "Username",
                     hintStyle: TextStyle(color: Colors.red),
                     hintMaxLines: 2,
                    helperMaxLines: 2,
                     icon: Icon(Icons.person),
                      prefixText: "Username :  ",
                     suffixText: "@gmail.com",
                    counterText: "Your Username is "
                      prefix: Text("Hlo"),
                    , */
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.text_fields),
                    labelText: "Username/E-mail_ID",
                    labelStyle: TextStyle(color: Colors.deepOrange),
                    icon: Text("Username    : "),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    fillColor: Colors.red,
                    focusColor: Colors.black,
                    hoverColor: Colors.green,
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.text_fields),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.deepOrange),
                    icon: Text("Password    : "),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
