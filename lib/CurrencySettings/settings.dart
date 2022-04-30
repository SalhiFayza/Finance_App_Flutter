import 'package:appbusiness/constant/constant.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(gradient: linearGradient),
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                child: RichText(
                    text: const TextSpan(
                  text: 'Settings',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
              ),
              const SizedBox(height: 50),
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Row(children: const [
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                    ListTile(
                      title: const Text(
                        'Reminder',
                        style: textstyle,
                      ),
                      trailing: SizedBox(
                        width: 22,
                        child: Row(
                          children: const [
                            Text(
                              "Off",
                              style: TextStyle(
                                  color: Color(0XFFD7D7D7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    containerbar(),
                    const ListTile(
                      title: Text('Export To PDF', style: textstyle),
                    ),
                    containerbar(),
                    const ListTile(
                      title: Text('Export To CSV ', style: textstyle),
                    ),
                    containerbar(),
                    SwitchListTile(
                      activeColor: drawerColor,
                      activeTrackColor: drawerColor,
                      inactiveTrackColor: circleAvtar,
                      inactiveThumbColor: circleAvtar,
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      title: const Text('Password To Delete Entry',
                          style: textstyle),
                    ),
                    containerbar(),
                    SwitchListTile(
                      activeColor: drawerColor,
                      activeTrackColor: drawerColor,
                      inactiveTrackColor: circleAvtar,
                      inactiveThumbColor: circleAvtar,
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      title: const Text('Google Sync', style: textstyle),
                    ),
                    containerbar(),
                    ListTile(
                      title: const Text('Base Currency', style: textstyle),
                      trailing: SizedBox(
                        width: 12,
                        child: Row(
                          children: const [textsettings],
                        ),
                      ),
                    ),
                    containerbar(),
                    ListTile(
                      title: const Text('Secondary Currency', style: textstyle),
                      trailing: SizedBox(
                        width: 12,
                        child: Row(
                          children: const [textsettings],
                        ),
                      ),
                    ),
                    containerbar(),
                    ListTile(
                      title: const Text('Privacy Policy', style: textstyle),
                      trailing: SizedBox(
                        width: 12,
                        child: Row(
                          children: const [textsettings],
                        ),
                      ),
                    ),
                    containerbar(),
                    ListTile(
                      title: const Text('Feedback', style: textstyle),
                      trailing: SizedBox(
                        width: 12,
                        child: Row(
                          children: const [textsettings],
                        ),
                      ),
                    ),
                    containerbar(),
                    ListTile(
                      title: const Text('Rate Our App', style: textstyle),
                      trailing: SizedBox(
                        width: 12,
                        child: Row(
                          children: const [textsettings],
                        ),
                      ),
                    ),
                    containerbar(),
                    ListTile(
                      title: const Text('Share', style: textstyle),
                      trailing: SizedBox(
                        width: 12,
                        child: Row(
                          children: const [textsettings],
                        ),
                      ),
                    ),
                    containerbar(),
                    ListTile(
                      title: const Text('About Us ', style: textstyle),
                      trailing: SizedBox(
                        width: 103,
                        child: Row(
                          children: const [
                            Text(
                              "version 1.4(10)",
                              style: TextStyle(
                                  color: Color(0XFFD7D7D7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(17, 0, 10, 0),
                      height: 1,
                      width: 340,
                      color: const Color(0XFFC9C9C9),
                    ),
                  ],
                ),
              ),
            ])))
      ]),
    );
  }

  Container containerbar() {
    return Container(
      margin: const EdgeInsets.fromLTRB(17, 0, 10, 0),
      height: 1,
      width: 340,
      color: const Color(0XFFC9C9C9),
    );
  }
}
