import 'package:appbusiness/constant/constant.dart';
import 'package:appbusiness/screen/gavegot/yougave.dart';
import 'package:appbusiness/screen/gavegot/yougot.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddP extends StatefulWidget {
  const AddP({Key? key}) : super(key: key);

  @override
  _AddPState createState() => _AddPState();
}

class _AddPState extends State<AddP> {
  TextEditingController searchController = TextEditingController();
  late String filter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
          decoration: BoxDecoration(gradient: linearGradient),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 50, bottom: 20),
                  child: RichText(
                      text: const TextSpan(
                    text: 'Salhi Fayza',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
                ),
                Positioned(
                  top: 20,
                  left: 60,
                  right: 30,
                  child: Card(
                    elevation: 8,
                    color: const Color(0xFF3D3F54),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                      width: 320,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text("You Will Get",
                                  style: TextStyle(
                                      color: Color(0XFFFFFFFF),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 130,
                              ),
                              Text("\$ 820",
                                  style: TextStyle(
                                      color: Color(0XFFD04E66),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 10,
                                ),
                                Container(
                                  height: 2,
                                  width: 260,
                                  color: const Color(0XFF57596D),
                                ),
                                const Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text("Set Collection Date",
                                  style: TextStyle(
                                      color: Color(0XFF5F6276),
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal)),
                              SizedBox(
                                width: 130,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Color(0XFF5F6276),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  height: MediaQuery.of(context).size.height,
                  child: Row(children: <Widget>[
                    Column(children: <Widget>[
                      Column(children: [
                        Container(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 20 * 2.5),
                          constraints: const BoxConstraints(maxWidth: 360),
                          height: 50,
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
                            children: [
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.twitter,
                                      color: oneColor,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Twitter",
                                      style: TextStyle(
                                          color: oneColor,
                                          fontSize: 11,
                                          fontWeight: FontWeight.normal),
                                    )
                                  ]),
                              const SizedBox(
                                width: 19,
                              ),
                              Column(children: const [
                                SizedBox(
                                  height: 5,
                                ),
                                Icon(
                                  FontAwesomeIcons.facebook,
                                  color: oneColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Facebook",
                                  style: TextStyle(
                                      color: oneColor,
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal),
                                )
                              ]),
                              const SizedBox(
                                width: 19,
                              ),
                              Column(children: const [
                                SizedBox(
                                  height: 5,
                                ),
                                Icon(
                                  FontAwesomeIcons.whatsapp,
                                  color: oneColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Whatsapp",
                                  style: TextStyle(
                                      color: oneColor,
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal),
                                )
                              ]),
                              const SizedBox(
                                width: 19,
                              ),
                              Column(children: const [
                                SizedBox(
                                  height: 5,
                                ),
                                Icon(
                                  FontAwesomeIcons.telegram,
                                  color: oneColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Telegram",
                                  style: TextStyle(
                                      color: oneColor,
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal),
                                )
                              ]),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(children: const [
                          SizedBox(
                            width: 15,
                            height: 10,
                          ),
                          Text(
                            "ENTRIES",
                            style: TextStyle(
                                color: Color(0XFFB2B2B2),
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Text(
                            "YOU GAVE",
                            style: TextStyle(
                                color: Color(0XFFB2B2B2),
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Text(
                            "YOU GOT",
                            style: TextStyle(
                                color: Color(0XFFB2B2B2),
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ]),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Card(
                                elevation: 4,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: SizedBox(
                                    width: 330,
                                    height: 60,
                                    child: Column(children: <Widget>[
                                      Row(children: [
                                        const SizedBox(
                                          width: 15,
                                          height: 10,
                                        ),
                                        Column(
                                          children: const [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "07 NOV 2022 | 05:21 PM",
                                              style: TextStyle(
                                                  color: Color(0XFFB4B4B4),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Hospital Case",
                                              style: TextStyle(
                                                  color: Color(0XFF7D7E8C),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        const Text("\$ 200",
                                            style: TextStyle(
                                                color: Color(0XFFD04E66),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                      ]),
                                    ]))),
                            const SizedBox(
                              height: 2,
                            ),
                            Card(
                                elevation: 4,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: SizedBox(
                                    width: 330,
                                    height: 60,
                                    child: Column(children: <Widget>[
                                      Row(children: [
                                        const SizedBox(
                                          width: 15,
                                          height: 10,
                                        ),
                                        Column(
                                          children: const [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "07 NOV 2022 | 05:21 PM",
                                              style: TextStyle(
                                                  color: Color(0XFFB4B4B4),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Recieved Borrow",
                                              style: TextStyle(
                                                  color: Color(0XFF7D7E8C),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 150,
                                        ),
                                        const Text("\$ 200",
                                            style: TextStyle(
                                                color: Color(0XFF5FB749),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                      ]),
                                    ]))),
                            const SizedBox(
                              height: 2,
                            ),
                            Card(
                                elevation: 4,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: SizedBox(
                                    width: 330,
                                    height: 60,
                                    child: Column(children: <Widget>[
                                      Row(children: [
                                        const SizedBox(
                                          width: 15,
                                          height: 10,
                                        ),
                                        Column(
                                          children: const [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "07 NOV 2022 | 05:21 PM",
                                              style: TextStyle(
                                                  color: Color(0XFFB4B4B4),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Loan",
                                              style: TextStyle(
                                                  color: Color(0XFF7D7E8C),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        const Text("\$ 300",
                                            style: TextStyle(
                                                color: Color(0XFFD04E66),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                      ]),
                                    ]))),
                            const SizedBox(
                              height: 2,
                            ),
                            Card(
                                elevation: 4,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: SizedBox(
                                    width: 330,
                                    height: 60,
                                    child: Column(children: <Widget>[
                                      Row(children: [
                                        const SizedBox(
                                          width: 15,
                                          height: 10,
                                        ),
                                        Column(
                                          children: const [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "07 NOV 2022 | 05:21 PM",
                                              style: TextStyle(
                                                  color: Color(0XFFB4B4B4),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Insurance",
                                              style: TextStyle(
                                                  color: Color(0XFF7D7E8C),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        const Text("\$ 520",
                                            style: TextStyle(
                                                color: Color(0XFFD04E66),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                      ]),
                                    ]))),
                            const SizedBox(
                              height: 100,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 150,
                                  child: ElevatedButton(
                                    child: const Text('YOU GAVE',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0XFFD72A5F),
                                      shadowColor: const Color(0XFFD72A5F),
                                      elevation: 20,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Yougave()));
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  height: 40,
                                  width: 150,
                                  child: ElevatedButton(
                                    child: const Text('YOU GOT',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0XFF5FB749),
                                      shadowColor: const Color(0XFF5FB749),
                                      elevation: 20,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Yougot()));
                                    },
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ]),
                    ]),
                  ]),
                ),
              ],
            ),
          )),
    ]));
  }
}
