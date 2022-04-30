import 'package:appbusiness/CurrencySettings/currency.dart';
import 'package:appbusiness/CurrencySettings/settings.dart';
import 'package:appbusiness/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                IconButton(
                    icon: const Icon(Icons.home_outlined),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "HomePage");
                    }),
                const SizedBox(
                  width: 30,
                ),
                IconButton(
                    icon: const Icon(
                      FeatherIcons.user,
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "account");
                    }),
                const SizedBox(
                  width: 30,
                ),
                IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
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
            child: const Icon(
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
        body: Stack(children: [
          Container(
              decoration: BoxDecoration(gradient: linearGradient),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 50),
                      child: RichText(
                          text: const TextSpan(
                        text: 'Profile',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      height: 820,
                      child: Row(children: <Widget>[
                        Column(children: <Widget>[
                          Column(children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20 * 2.5),
                              constraints: const BoxConstraints(maxWidth: 360),
                              height: 100,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 30),
                                      blurRadius: 30,
                                      color: Color(0XFFE0E0E0),
                                    )
                                  ]),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: ExactAssetImage(
                                                    'images/pro.jpg'),
                                                fit: BoxFit.cover),
                                            shape: BoxShape.circle),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            'Salhi Fayza',
                                            style: TextStyle(
                                                color: oneColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "+216 92848602",
                                            style: TextStyle(
                                                color: Color(0XFFD7D7D7),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 26,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Settings()));
                                      },
                                      icon: const Icon(
                                        FeatherIcons.edit,
                                        color: oneColor,
                                      ))
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.5,
                              child: Column(
                                children: <Widget>[
                                  Row(children: const [
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ]),
                                  ListTile(
                                    title: const Text(
                                      'Dark Mode',
                                      style: TextStyle(
                                          color: oneColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    leading: const CircleAvatar(
                                      backgroundColor: circleAvtar,
                                      child: Icon(
                                        Icons.star,
                                        color: white,
                                      ),
                                    ),
                                    trailing: IconButton(
                                      icon:
                                          const Icon(Icons.dark_mode_outlined),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(60, 0, 5, 0),
                                    height: 1,
                                    width: 260,
                                    color: const Color(0XFFC9C9C9),
                                  ),
                                  const ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: circleAvtar,
                                      child: Icon(
                                        Icons.star,
                                        color: white,
                                      ),
                                    ),
                                    title: Text(
                                      'Your Name',
                                      style: TextStyle(
                                          color: oneColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: Text(
                                      "Fayza  >",
                                      style: TextStyle(
                                          color: Color(0XFFD7D7D7),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(60, 0, 5, 0),
                                    height: 1,
                                    width: 260,
                                    color: const Color(0XFFC9C9C9),
                                  ),
                                  const ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: circleAvtar,
                                      child: Icon(
                                        Icons.star,
                                        color: white,
                                      ),
                                    ),
                                    title: Text(
                                      'Business Name',
                                      style: TextStyle(
                                          color: oneColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: Text(
                                      "Fayza Salhi  >",
                                      style: TextStyle(
                                          color: Color(0XFFD7D7D7),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(60, 0, 5, 0),
                                    height: 1,
                                    width: 260,
                                    color: const Color(0XFFC9C9C9),
                                  ),
                                  const ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: circleAvtar,
                                      child: Icon(
                                        Icons.star,
                                        color: white,
                                      ),
                                    ),
                                    title: Text(
                                      'Phone Number',
                                      style: TextStyle(
                                          color: oneColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: Text(
                                      "+216 92848602 >",
                                      style: TextStyle(
                                          color: Color(0XFFD7D7D7),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(60, 0, 5, 0),
                                    height: 1,
                                    width: 260,
                                    color: const Color(0XFFC9C9C9),
                                  ),
                                  const ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: circleAvtar,
                                      child: Icon(
                                        Icons.star,
                                        color: white,
                                      ),
                                    ),
                                    title: Text(
                                      'App Language',
                                      style: TextStyle(
                                          color: oneColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: Text(
                                      "English  >",
                                      style: TextStyle(
                                          color: Color(0XFFD7D7D7),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(60, 0, 5, 0),
                                    height: 1,
                                    width: 260,
                                    color: const Color(0XFFC9C9C9),
                                  ),
                                  ListTile(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Currency()));
                                    },
                                    leading: const CircleAvatar(
                                      backgroundColor: circleAvtar,
                                      child: Icon(
                                        Icons.star,
                                        color: white,
                                      ),
                                    ),
                                    title: const Text(
                                      'App Currency',
                                      style: TextStyle(
                                          color: oneColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: const Text(
                                      "Dinar Tunisia  >",
                                      style: TextStyle(
                                          color: Color(0XFFD7D7D7),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(60, 0, 5, 0),
                                    height: 1,
                                    width: 260,
                                    color: const Color(0XFFC9C9C9),
                                  ),
                                ],
                              ),
                            ),
                          ])
                        ]),
                      ]),
                    )
                  ],
                ),
              ))
        ]));
  }
}
