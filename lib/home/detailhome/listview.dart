import 'dart:math';

import 'package:flutter/material.dart';
import 'package:appbusiness/screen/viewprofile.dart';
import 'package:appbusiness/constant/constant.dart';

class ListViewC extends StatefulWidget {
  const ListViewC({Key? key}) : super(key: key);

  @override
  _ListViewCState createState() => _ListViewCState();
}

class _ListViewCState extends State<ListViewC> {
  final colorCircleAvater = [
    const Color(0XFFD96D8C),
    const Color(0XFFA36F7D),
    const Color(0XFF767070),
    const Color(0XFFE04B61),
    const Color(0XFFE0A7AD),
    const Color(0XFFE0A7AD),
    const Color(0XFFD96D8C),
    const Color(0XFFA36F7D),
    const Color(0XFF767070),
    const Color(0XFFE04B61),
    const Color(0XFFE0A7AD),
    const Color(0XFFE0A7AD),
  ];
  Random random = Random();
  Color _getColorAvater() {
    return colorCircleAvater[random.nextInt(colorCircleAvater.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Column(children: [
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const AddP()));
            },
            leading: CircleAvatar(
              backgroundColor: _getColorAvater(),
              child: const Text('SF', style: textstyle0),
            ),
            title: const Text(
              'Salhi Fayza',
              style: textstyle1,
            ),
            subtitle: Row(children: const [
              iconUp,
              SizedBox(
                width: 3,
              ),
              Text(text, style: sytlesubtitle),
            ]),
            trailing: SizedBox(
              width: 90,
              child: Column(
                children: const [
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "\$ 3,256",
                    style: TextStyle(
                        color: Color(0XFFE06087),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("You’ll Give", style: sytlesubtitle2),
                ],
              ),
            ),
          ),
          containerbar(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: _getColorAvater(),
              child: const Text('SA', style: textstyle0),
            ),
            title: const Text(
              'Salhi Anis',
              style: textstyle1,
            ),
            subtitle: Row(children: const [
              iconUp,
              SizedBox(
                width: 3,
              ),
              Text(text, style: sytlesubtitle),
            ]),
            trailing: SizedBox(
              width: 90,
              child: Column(
                children: const [
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "\$ 56",
                    style: TextStyle(
                        color: Color(0XFFE16289),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("You’ll Get", style: sytlesubtitle2),
                ],
              ),
            ),
          ),
          containerbar(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: _getColorAvater(),
              child: const Text('AA', style: textstyle0),
            ),
            title: const Text(
              'Aakrmi Ameni',
              style: textstyle1,
            ),
            subtitle: Row(children: const [
              iconUp,
              SizedBox(
                width: 3,
              ),
              Text(text, style: sytlesubtitle),
            ]),
            trailing: SizedBox(
              width: 90,
              child: Column(
                children: const [
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "\$ 56",
                    style: TextStyle(
                        color: Color(0XFFE16289),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("You’ll Get", style: sytlesubtitle2),
                ],
              ),
            ),
          ),
          containerbar(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: _getColorAvater(),
              child: const Text('ME', style: textstyle0),
            ),
            title: const Text(
              'Makdouli Eya',
              style: textstyle1,
            ),
            subtitle: Row(children: const [
              iconUp,
              SizedBox(
                width: 3,
              ),
              Text(text, style: sytlesubtitle),
            ]),
            trailing: SizedBox(
              width: 90,
              height: 20,
              child: Column(
                children: const [
                  Text(
                    "\$ 0",
                    style: TextStyle(
                        color: Color(0XFF7297DD),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          containerbar(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: _getColorAvater(),
              child: const Text('SM', style: textstyle0),
            ),
            title: const Text(
              'Salhi Mohamed',
              style: textstyle1,
            ),
            subtitle: Row(children: const [
              iconUp,
              SizedBox(
                width: 3,
              ),
              Text(text, style: sytlesubtitle),
            ]),
            trailing: SizedBox(
              width: 90,
              child: Column(
                children: const [
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "\$ 1,256",
                    style: TextStyle(
                        color: Color(0XFF70BF5C),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("You’ll Get", style: sytlesubtitle2),
                ],
              ),
            ),
          ),
          containerbar(),
        ]);
      },
    );
  }

  containerbar() {
    return Container(
      margin: const EdgeInsets.fromLTRB(50, 0, 5, 0),
      height: 1,
      width: 275,
      color: const Color(0XFFC9C9C9),
    );
  }
}
