import 'package:appbusiness/constant/constant.dart';
import 'package:flutter/material.dart';

class Yougot extends StatefulWidget {
  const Yougot({Key? key}) : super(key: key);

  @override
  _YougotState createState() => _YougotState();
}

class _YougotState extends State<Yougot> {
  final color1 = Color(0XFF5FB749);
  final color2 = Color(0XFFE0F1DC);
  final ElevatedButtonstyleFrom = ElevatedButton.styleFrom(
    primary: const Color(0XFF5FB749),
    shadowColor: const Color(0XFF5FB749),
    elevation: 20,
  );
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
                        text: 'Fayza Gave You \$250',
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
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      height: MediaQuery.of(context).size.height,
                      child: Column(children: <Widget>[
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                            border: Border.all(color: color1, width: 2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: ListTile(
                              title: Text(
                                '\$ 250',
                                style: TextStyle(
                                    color: color1,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              autofocus: false,
                              trailing: Icon(
                                Icons.arrow_back_ios,
                                color: color1,
                              )),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: color2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const TextField(
                            textInputAction: TextInputAction.search,
                            decoration: InputDecoration(
                              hintText: "Enter Details (Item Name, Bill No)",
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(left: 15.0, top: 15.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              height: 50,
                              width: 145,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: color2,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: ListTile(
                                leading: Icon(
                                  Icons.calendar_today_outlined,
                                  color: color1,
                                ),
                                title: Text(
                                  '19/04/2022',
                                  style: TextStyle(
                                      color: color1,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                autofocus: false,
                              ),
                            ),
                            const SizedBox(
                              width: 100,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: color2,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: color1,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 300,
                        ),
                        Container(
                          height: 40,
                          width: 300,
                          child: ElevatedButton(
                            child: const Text('SAVE',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                            style: ElevatedButtonstyleFrom,
                            onPressed: () {},
                          ),
                        ),
                      ]))
                ]))),
      ]),
    );
  }
}
