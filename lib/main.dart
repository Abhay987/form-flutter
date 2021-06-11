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
  final gbk = GlobalKey<FormState>();
  final mycu = TextEditingController();
  final mycp = TextEditingController();

  bool obst = true;
  /* @override
  void initState() {
    super.initState();
    mycu.addListener(() {
      platestvalue();
    });
    mycp.addListener(() {
      platestvalue();
    });
  }

  @override
  void dispose() {
    mycu.dispose();
    mycp.dispose();
    super.dispose();
  }*/

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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceAround
            //  runSpacing: 10,
            //  spacing: 40,
            children: [
              SizedBox(height: 40),
              // Container(height: 40),
              //    Spacer()

              TextFormField(
                controller: mycu,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter some Text";
                  }
                  return null;
                },
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
                  //  prefixIcon: Icon(Icons.email),
                  //suffixIcon: Icon(Icons.text_fields),
                  labelText: "Username/E-mail_ID",
                  labelStyle: TextStyle(color: Colors.deepOrange),
                  icon: Text("Username    : "),
                ),
              ),
              //   SizedBox(height: 40),
              Container(height: 40),
              //   Spacer(),
              TextFormField(
                controller: mycp,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter some Text";
                  }
                  return null;
                },
                obscureText: obst,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  fillColor: Colors.red,
                  focusColor: Colors.black,
                  hoverColor: Colors.green,
                  //  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obst = !obst;
                        });
                      },
                      icon:
                          Icon(obst ? Icons.visibility_off : Icons.visibility)),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.deepOrange),
                  icon: Text("Password    : "),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (gbk.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Processing Data")));
                        platestvalue();
                      }
                    },
                    child: Text("Submit"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void platestvalue() {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("The Username is ${mycu.text}")));
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("The Password is ${mycp.text}")));
  }
}
