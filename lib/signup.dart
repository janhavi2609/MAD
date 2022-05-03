import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'bottom_navbar.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //cus bottom overflow
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
            SizedBox(height: 20),

            Center(
                child: Column(
                  children: [
                    Image.asset("assets/coursera-logo.png",
                        height: 20),
                    SizedBox(height: 15),
                    Text("Create New Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField (
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.account_circle),
                          labelText: 'Full Name (Required)',
                          hintText: 'Enter Your Full Name'
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField (
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.mail),
                          labelText: 'E-mail (Required)',
                          hintText: 'Enter Your E-mail'
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField (
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password (Required)',
                          hintText: 'Enter Your Password'
                      ),
                    ),
                  ],
                )

            ),
            SizedBox(height: 12),
            Text('Forgot Password?',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 13,
                )
            ),
            SizedBox(height: 30),
            Container(
              child: FlatButton(
                child: Text("Sign Up",
                    style: TextStyle(
                        color: Colors.white)
                ),
                color: Colors.blue[800],
                padding: EdgeInsets.all(15),
                onPressed: (){},
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    height: 30,
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(width: 5),
                Text("or",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Divider(
                    height: 30,
                    color: Colors.grey[400],
                  ),
                )
              ],
            ),
            Container(
              child: FlatButton(
                child: Text("Already have an account? Log In",
                    style: TextStyle(
                        color: Colors.blue[800])
                ),
                color: Colors.white,
                padding: EdgeInsets.all(15),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(height: 10),
            //Image.asset("assets/below-illus.png"),
          ],
        ),
      ),
    );

  }
}