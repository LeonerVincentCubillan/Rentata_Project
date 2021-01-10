import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rentataPrototype/loginpage.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            logoSection(),
            buttonSection(),
            textSection(),
            signUpSection(),
            infoSection(),
          ],
        ),
      ),
    );
  }

  Container logoSection() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 0.0),
            padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 0.0),
            child: Image.asset('assets/images/Colored_logo.png'),
          ),
        ],
      ),
    );
  }

  Container signUpSection() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: FlatButton(
        onPressed: () {},
        child: Container(
          width: 350.0,
          height: 80.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.lightBlue[400], Colors.indigo[900]],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: const Text('SIGN UP',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }

  Container buttonSection() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 0.0),
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Row(children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (BuildContext context) => LoginPage()),
                        (Route<dynamic> route) => false);
                  },
                  child: Text("LOGIN",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                      )),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("SIGN UP",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        decoration: TextDecoration.underline,
                      )),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Container infoSection() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 0.0),
            child: Row(children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("About Us",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Contact Us",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Container textSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(40.0)),
              contentPadding:
                  new EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              suffixIcon: Icon(Icons.person, color: Colors.grey[700]),
              hintText: "Username",
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(40.0)),
              contentPadding:
                  new EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              suffixIcon: Icon(Icons.mail, color: Colors.grey[700]),
              hintText: "Email",
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            cursorColor: Colors.black,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(40.0)),
              contentPadding:
                  new EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              suffixIcon: Icon(Icons.lock, color: Colors.grey[700]),
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            cursorColor: Colors.black,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(40.0)),
              contentPadding:
                  new EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              suffixIcon: Icon(Icons.lock, color: Colors.grey[700]),
              hintText: "Re-type Password",
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
