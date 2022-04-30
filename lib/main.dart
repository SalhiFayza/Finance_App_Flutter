import 'package:appbusiness/CurrencySettings/settings.dart';
import 'package:appbusiness/home/account.dart';
import 'package:appbusiness/home/add.dart';
import 'package:appbusiness/login/registration_screen.dart';
import 'package:appbusiness/screen/viewprofile.dart';

import 'package:flutter/material.dart';
import 'package:appbusiness/login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appbusiness/Login/start.dart';
import 'package:appbusiness/home/home.dart';
import 'package:appbusiness/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  runApp(MyApp(preferences.containsKey("fist")));
}

class MyApp extends StatelessWidget {
  late bool check;
  MyApp(bool check) {
    this.check = check;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: checkLog(),
      routes: <String, WidgetBuilder>{
        "SplashScreen": (BuildContext context) => const SplashScreen(),
        "Login": (BuildContext context) => const LoginScreen(),
        "Start": (BuildContext context) => const Start(),
        "SignUp": (BuildContext context) => const RegistrationScreen(),
        "HomePage": (BuildContext context) => const HomePage(),
        "account": (BuildContext context) => const Account(),
        "add": (BuildContext context) => const Add(),
        "Settings": (BuildContext context) => const Settings(),
        "profile": (BuildContext context) => const AddP(),
      },
    );
  }

  Widget checkLog() {
    if (!check)
      return HomePage();
    else
      return SplashScreen();
  }
}
