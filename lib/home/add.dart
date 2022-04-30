import 'package:appbusiness/constant/constant.dart';
import 'package:appbusiness/home/home.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: linearGradient),
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 50, right: 50),
            child: Row(children: [
              Container(
                height: 50,
                width: 250,
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
                    hintText: "Search ",
                    border: InputBorder.none,
                    contentPadding:
                        const EdgeInsets.only(left: 15.0, top: 15.0),
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(children: <Widget>[
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 12, left: 20, right: 8.0),
                    child: Text(
                      'Choose A Contact To Add',
                      style: TextStyle(
                          color: buttonColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 70,
                child: Card(
                  elevation: 0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                    width: 352,
                    height: 700,
                    child: Column(
                      children: <Widget>[
                        Row(children: const [
                          SizedBox(
                            height: 10,
                          ),
                        ]),
                        const users(),
                        const containerStyle(),
                        const users0(),
                        const containerStyle(),
                        const users1(),
                        const containerStyle(),
                        const users2(),
                        const containerStyle(),
                        const users3(),
                        const containerStyle(),
                        const users4(),
                        const containerStyle(),
                        const users5(),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ])),
      ),
    );
  }
}

class users extends StatelessWidget {
  const users({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0XFFD04E66),
        child: Icon(
          Icons.person_add_alt_1_outlined,
          color: Colors.white,
        ),
      ),
      title: Text(
        'Add New Customer',
        style: textadd,
      ),
    );
  }
}

class users5 extends StatelessWidget {
  const users5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0XFFA36F7D),
        child: Text(
          'SA',
          style: textstyle0,
        ),
      ),
      title: const Text(
        'Salhi Anis',
        style: textadd,
      ),
      subtitle: Text(
        numtel,
        style: stylenumtel,
      ),
      trailing: Container(
        width: 60,
        child: Container(
          width: 10,
          height: 20,
          // ignore: deprecated_member_use
          child: RaisedButton(
            onPressed: () {},
            color: buttonColor,
            child: const Text(
              '+ ADD',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      ),
    );
  }
}

class users4 extends StatelessWidget {
  const users4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0XFF767070),
        child: Text(
          'AA',
          style: textstyle0,
        ),
      ),
      title: const Text(
        'Aakrmi Ameni',
        style: textadd,
      ),
      subtitle: Text(
        numtel,
        style: stylenumtel,
      ),
      trailing: Container(
        width: 60,
        child: Container(
          width: 10,
          height: 20,
          // ignore: deprecated_member_use
          child: RaisedButton(
            onPressed: () {},
            color: buttonColor,
            child: const Text(
              '+ ADD',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      ),
    );
  }
}

class users3 extends StatelessWidget {
  const users3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0XFFE04B61),
        child: Text(
          'ME',
          style: textstyle0,
        ),
      ),
      title: const Text(
        'Makdouli Eya',
        style: textadd,
      ),
      subtitle: Text(
        numtel,
        style: stylenumtel,
      ),
      trailing: Container(
        width: 60,
        child: Container(
          width: 10,
          height: 20,
          // ignore: deprecated_member_use
          child: RaisedButton(
            onPressed: () {},
            color: buttonColor,
            child: const Text(
              '+ ADD',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      ),
    );
  }
}

class users2 extends StatelessWidget {
  const users2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0XFFE0A7AD),
        child: Text(
          'SM',
          style: textstyle0,
        ),
      ),
      title: const Text(
        'Salhi Mohamed',
        style: textadd,
      ),
      subtitle: Text(numtel, style: stylenumtel),
      trailing: Container(
        width: 60,
        child: Container(
          width: 10,
          height: 20,
          // ignore: deprecated_member_use
          child: RaisedButton(
            onPressed: () {},
            color: buttonColor,
            child: const Text(
              '+ ADD',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      ),
    );
  }
}

class users1 extends StatelessWidget {
  const users1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0XFFD96D8C),
        child: Text(
          'SF',
          style: textstyle0,
        ),
      ),
      title: const Text(
        'Salhi Fayza',
        style: textadd,
      ),
      subtitle: Text(
        numtel,
        style: stylenumtel,
      ),
      trailing: Container(
        width: 65,
        child: Container(
          width: 10,
          height: 20,
          // ignore: deprecated_member_use
          child: RaisedButton(
            onPressed: () {},
            child: const Text(
              'ADDED',
              style: TextStyle(
                  color: buttonColor,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      ),
    );
  }
}

class users0 extends StatelessWidget {
  const users0({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0XFFE5ADB3),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: const Text('+216 92848602', style: stylenumtel),
      trailing: Container(
        width: 60,
        child: Container(
          width: 10,
          height: 20,
          // ignore: deprecated_member_use
          child: RaisedButton(
            onPressed: () {},
            color: buttonColor,
            child: const Text(
              '+ ADD',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      ),
    );
  }
}

class containerStyle extends StatelessWidget {
  const containerStyle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(70, 0, 15, 0),
      height: 1,
      width: 340,
      color: const Color(0XFFC9C9C9),
    );
  }
}
