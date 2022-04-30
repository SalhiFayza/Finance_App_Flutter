// ignore_for_file: deprecated_member_use

import 'package:appbusiness/constant/constant.dart';
import 'package:appbusiness/home/home.dart';
import 'package:appbusiness/login/registration_screen.dart';
import 'package:appbusiness/login/start.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  // firebase
  final _auth = FirebaseAuth.instance;

  // string for displaying the error Message
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Email");
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
        },
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          filled: true,
          fillColor: const Color(0XFFE5E5E5),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
        ));

    //password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required for login");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          filled: true,
          fillColor: const Color(0XFFE5E5E5),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
        ));

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: buttonColor,
      child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            signIn(emailController.text, passwordController.text);
          },
          child: const Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );
    final forget =
        Row(mainAxisAlignment: MainAxisAlignment.end, children: const <Widget>[
      Text("Forgot Password",
          style: TextStyle(
            color: mediaColor,
            fontSize: 16,
          ))
    ]);
    final or = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text("or login with",
              style: TextStyle(
                color: Color(0xFF3D3F54),
                fontSize: 16,
              ))
        ]);
    final media =
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: InkWell(
          child: const Material(
              child: Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(EvaIcons.google, color: mediaColor, size: 50),
          )),
          onTap: () {
            _googleURL("alexjamesddd");
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: InkWell(
          child: const Material(
              child: Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(EvaIcons.facebook, color: mediaColor, size: 50),
          )),
          onTap: () {
            _facebookURL("alexjamesddd");
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: InkWell(
          child: const Material(
              child: Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(EvaIcons.twitter, color: mediaColor, size: 50),
          )),
          onTap: () {
            _twitterURL("alexjamesddd");
          },
        ),
      ),
    ]);

    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: linearGradient,
            ),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios,
                            color: Colors.white),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const Start()));
                        },
                      ),
                      FlatButton(
                        textColor: Colors.white,
                        onPressed: () {},
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: ListTile(
                    title: const Text(
                      "Login\n",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    subtitle: const Text(
                      "Aenean Leo Ligula, Porttitor Eu, Consequat \nVitae, Eleifend Ac, Enim.",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                    selectedTileColor: Colors.white,
                    onTap: () {
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 570,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(36.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          emailField,
                          const SizedBox(height: 20),
                          passwordField,
                          const SizedBox(height: 20),
                          forget,
                          const SizedBox(height: 15),
                          loginButton,
                          const SizedBox(height: 40),
                          or,
                          const SizedBox(height: 15),
                          media,
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            )));
  }

  // login function
  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
                  Fluttertoast.showToast(msg: "Login Successful"),
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage())),
                });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";

            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }

  _facebookURL(String $profileName) async {
    var url = 'https://facebook.com/' + $profileName;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _twitterURL(String $profileName) async {
    var url = 'https://twitter.com/whatsupcoders';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _googleURL(String $profileName) async {
    var url = 'https://google.com/' + $profileName;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
