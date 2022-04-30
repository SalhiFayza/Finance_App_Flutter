import 'package:appbusiness/constant/constant.dart';
import 'package:flutter/material.dart';

class Currency extends StatefulWidget {
  const Currency({Key? key}) : super(key: key);

  @override
  _CurrencyState createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  final style1 = TextStyle(color: Color(0XFF363569));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(gradient: linearGradient),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 50, bottom: 10),
                    child: RichText(
                      text: const TextSpan(
                        text: 'Choose Currency',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 50,
                          width: 260,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white),
                          child: TextField(
                            textInputAction: TextInputAction.search,
                            decoration: InputDecoration(
                              prefixIcon: IconButton(
                                icon: const Icon(Icons.search),
                                onPressed: () {},
                                iconSize: 30.0,
                                color: Colors.black,
                              ),
                              hintText: "Search Currencies",
                              border: InputBorder.none,
                              contentPadding:
                                  const EdgeInsets.only(left: 15.0, top: 15.0),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 12, left: 20, right: 8.0),
                              child: Text(
                                'All Currencies',
                                style: TextStyle(
                                    color: Color(0XFF191754),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        containerbar(),
                        ListTile(
                          title: Text(
                            "India - ব",
                            style: style1,
                          ),
                        ),
                        containerbar(),
                        ListTile(
                          title: Text(
                            "Indonesia -  Rp",
                            style: style1,
                          ),
                        ),
                        containerbar(),
                        ListTile(
                          title: Text(
                            "United State Of America -  \$",
                            style: style1,
                          ),
                        ),
                        containerbar(),
                        ListTile(
                          title: Text(
                            "Pakistan - Rs ",
                            style: style1,
                          ),
                        ),
                        containerbar(),
                        ListTile(
                          title: Text(
                            "Saudi Arebia - ر.س,",
                            style: style1,
                          ),
                        ),
                        containerbar(),
                        ListTile(
                          title: Text(
                            "Bangladesh - ট",
                            style: style1,
                          ),
                        ),
                        containerbar(),
                        ListTile(
                          title: Text(
                            "UAE - د.إ",
                            style: style1,
                          ),
                        ),
                        containerbar(),
                        ListTile(
                          title: Text(
                            "Afganistan - Af ",
                            style: style1,
                          ),
                        ),
                        containerbar(),
                        ListTile(
                          title: Text(
                            "Albania - L",
                            style: style1,
                          ),
                        ),
                        containerbar(),
                        ListTile(
                          title: Text(
                            "Alderney - £",
                            style: style1,
                          ),
                        ),
                        containerbar(),
                        ListTile(
                          title: Text(
                            "Algeria - دج",
                            style: style1,
                          ),
                        ),
                        containerbar(),
                        ListTile(
                          title: Text(
                            "American Samoa - \$",
                            style: style1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container containerbar() {
    return Container(
      margin: const EdgeInsets.fromLTRB(17, 0, 5, 0),
      height: 1,
      width: 340,
      color: const Color(0XFFC9C9C9),
    );
  }
}
