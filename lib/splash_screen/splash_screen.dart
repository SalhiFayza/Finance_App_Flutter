import 'dart:async';
import 'package:appbusiness/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:appbusiness/login/start.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Start()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: linearGradient,
            ),
          ),
          Center(
            child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color(0xffE5E5E5),
                      width: 10.0,
                      style: BorderStyle.solid),
                  shape: BoxShape.circle,
                )),
          ),
          const Center(
              child: Image(
            width: 100,
            height: 100,
            image: AssetImage(
              "images/dollar_euro1.png",
            ),
          )),
        ],
      ),
    );
  }
}
