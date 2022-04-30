import 'package:appbusiness/constant/constant.dart';
import 'package:appbusiness/home/detailhome/cardblack.dart';
import 'package:appbusiness/home/detailhome/customer.dart';
import 'package:appbusiness/home/detailhome/search.dart';

import 'package:appbusiness/screen/viewprofile.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:feather_icons/feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late final String title;

  bool isloggedin = false;
  late User user;
  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.of(context).pushReplacementNamed("SplashScreen");
      }
    });
  }

  getUser() async {
    User? firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser = _auth.currentUser;

    if (firebaseUser != null) {
      setState(() {
        this.user = firebaseUser!;
        this.isloggedin = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
    this.getUser();
  }

  late int currentIndex;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: _buildMyDrawer(context),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              IconButton(
                  icon: Icon(Icons.home_outlined),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "HomePage");
                  }),
              SizedBox(
                width: 30,
              ),
              IconButton(
                  icon: Icon(
                    FeatherIcons.user,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "account");
                  }),
              SizedBox(
                width: 30,
              ),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
          height: 70,
          width: 70,
          decoration:
              BoxDecoration(shape: BoxShape.circle, gradient: linearGradient),
          child: Icon(
            Icons.add,
            color: drawerColor,
          ),
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, "add");
        },
      ),
      backgroundColor: buttonColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: Container(
        decoration: BoxDecoration(
          gradient: linearGradient,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _AppBar(scaffoldKey: _scaffoldKey, auth: _auth),
              Column(
                children: [
                  search(),
                  CardBlack(),
                  SizedBox(
                    height: 10,
                  ),
                  CustomersHome(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMyDrawer(context) {
    const style = TextStyle(
      color: drawerColor,
    );
    return Drawer(
      backgroundColor: mediaColor,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('images/profileimage.jpg'),
            ),
            otherAccountsPictures: const [
              CircleAvatar(
                backgroundImage: AssetImage('images/profileimage.jpg'),
              )
            ],
            accountEmail: const Text(
              'salhifayzaf@gmail.com',
              style: TextStyle(color: buttonColor),
            ),
            accountName: const Text(
              'Salhi Fayza',
              style: TextStyle(color: drawerColor),
            ),
            arrowColor: buttonColor,
            onDetailsPressed: () {},
            decoration: const BoxDecoration(
              color: mediaColor,
            ),
          ),
          ListTile(
            onTap: () async {
              Navigator.of(context).pushReplacementNamed("HomePage");
            },
            leading: const Icon(
              Icons.home,
              size: 30,
              color: drawerColor,
            ),
            title: const Text("Home", style: style),
          ),
          ListTile(
            onTap: () async {
              Navigator.of(context).pushReplacementNamed("profile");
            },
            leading: const Icon(
              Icons.person,
              size: 30,
              color: drawerColor,
            ),
            title: const Text("Prfile", style: style),
          ),
          ListTile(
            onTap: () async {
              Navigator.of(context).pushReplacementNamed("Settings");
            },
            leading: const Icon(
              Icons.settings,
              size: 30,
              color: drawerColor,
            ),
            title: const Text("Settings", style: style),
          ),
          Container(
            height: 4,
            width: 50,
            decoration: BoxDecoration(
              gradient: linearGradient3,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          ListTile(
            onTap: () async {
              Navigator.of(context).pushReplacementNamed("Start");
            },
            leading: const Icon(
              Icons.exit_to_app,
              size: 30,
              color: drawerColor,
            ),
            title: const Text(
              "LogOut",
              style: style,
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required FirebaseAuth auth,
  })  : _scaffoldKey = scaffoldKey,
        _auth = auth,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;
  final FirebaseAuth _auth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.sort_rounded,
              size: 35,
              color: Colors.white,
            ),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              SharedPreferences preferences =
                  await SharedPreferences.getInstance();
              preferences.remove("fist");
              _auth.signOut();
              Navigator.of(context).pushReplacementNamed("SplashScreen");
            },
          ),
        ],
      ),
    );
  }
}
