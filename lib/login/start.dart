import 'package:appbusiness/constant/constant.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  navigateToLogin() async {
    Navigator.pushReplacementNamed(context, "Login");
  }

  navigateToRegister() async {
    Navigator.of(context).pushReplacementNamed("SignUp");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const SizedBox(height: 140),
          const _CircleAvater(),
          const SizedBox(height: 214),
          Container(
            height: 240,
            decoration: const BoxDecoration(
              gradient: linearGradient,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                const _welcome(),
                const SizedBox(
                  height: 20,
                ),
                const _Text(),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                      width: 150,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: Color(0xFF3D3F54),
                          ),
                        ),
                        color: const Color(0xFF3D3F54),
                        textColor: const Color(0XFFE5E5E5),
                        padding: const EdgeInsets.all(18),
                        onPressed: navigateToLogin,
                        child: Text(
                          "Login".toUpperCase(),
                          style: const TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 50,
                      width: 150,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: Color(0XFFE5E5E5),
                          ),
                        ),
                        padding: const EdgeInsets.all(18),
                        onPressed: navigateToRegister,
                        color: const Color(0XFFE5E5E5),
                        textColor: buttonColor,
                        child: Text(
                          "Sign Up".toUpperCase(),
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: RichText(
        text: const TextSpan(
          text:
              'Aenean Leo Ligula, Porttitor Eu, Consequat \nVitae, Eleifend Ac, Enim. Aliquam Eu Nunc. \nDonec Mollis Hendrerit Risus.',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class _welcome extends StatelessWidget {
  const _welcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: RichText(
        text: const TextSpan(
          text: 'Welcome',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class _CircleAvater extends StatelessWidget {
  const _CircleAvater({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Color(0XFFF3F6FD),
      radius: 80.0,
      child: Image(
        width: 100,
        height: 100,
        image: AssetImage(
          "images/dollar_euro2.png",
        ),
      ),
    );
  }
}
