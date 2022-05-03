import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'bottom_navbar.dart';
import 'form.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  var passy = "purrpurr";

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      Explore();
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //cus bottom overflow
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    child: FlatButton(
                      child: Text("Sign up later",
                          style: TextStyle(
                              color: Colors.blue[800])
                      ),
                      color: Colors.white,
                      padding: EdgeInsets.all(0),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Explore()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Image.asset("assets/coursera-logo.png",
                        height: 20),
                    SizedBox(height: 15),
                    Text("Log into your account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.mail),
                          labelText: 'E-mail (Required)',
                          hintText: 'Enter Your E-mail'
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (value) {
                        //Validator
                      },
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value!)) {
                          return 'Enter a valid email!';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password (Required)',
                          hintText: 'Enter Your Password'
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (value) {},
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a valid password!';
                        }
                        else{
                          if(value != passy){
                            return 'Incorrect password!';
                          }
                          return null;
                        }
                      },
                    ),

                  ],
                ),
              ),
              SizedBox(height: 30),
              RaisedButton(
                child: Text("Log In",
                    style: TextStyle(
                        color: Colors.white)
                ),
                  color: Colors.blue[800],
                  padding: EdgeInsets.all(15),
                  onPressed: () => _submit(),
              ),
              Container(
                child: FlatButton(
                  child: Text("Don't have an account? Sign Up",
                      style: TextStyle(
                          color: Colors.blue[800])
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

