import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Custom-Form",
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   final gbk = GlobalKey();

  bool obst = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("CustomForm"),
      ),
      body: Form(
          key: gbk,
          child: Container(
            padding: EdgeInsets.all(40),
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
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.text_fields),
                    labelText: "Username/E-mail_ID",
                    labelStyle: TextStyle(color: Colors.deepOrange),
                    icon: Text("Username    : "),
                  ),
                ),
                TextFormField( obscureText: obst,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    fillColor: Colors.red,
                    focusColor: Colors.black,
                    hoverColor: Colors.green,
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        obst=!obst;
                      });
                    }, icon: Icon(obst?Icons.visibility:Icons.visibility_off)),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.deepOrange),
                    icon: Text("Password    : "),
                  ),
                 
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Processing Data")));
                      },
                      child: Text("Submit"),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
    
}


