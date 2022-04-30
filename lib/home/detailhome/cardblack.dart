import 'package:flutter/material.dart';

class CardBlack extends StatelessWidget {
  const CardBlack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 25,
      child: Card(
        margin: EdgeInsets.only(left: 30, right: 30, top: 10),
        elevation: 50,
        color: const Color(0xFF3D3F54),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.height * .90,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text("\$ 15.238",
                      style: TextStyle(
                          color: Color(0XFFD04E66),
                          fontSize: 15,
                          fontWeight: FontWeight.normal)),
                  Text("You Will Get",
                      style: TextStyle(
                          color: Color(0XFF5F6276),
                          fontSize: 15,
                          fontWeight: FontWeight.normal)),
                ],
              ),
              Container(
                height: 80,
                width: 2,
                color: const Color(0XFF57596D),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text("\$ 7.654",
                      style: TextStyle(
                          color: Color(0XFF78B66A),
                          fontSize: 15,
                          fontWeight: FontWeight.normal)),
                  Text("You Will Give",
                      style: TextStyle(
                          color: Color(0XFF5F6276),
                          fontSize: 15,
                          fontWeight: FontWeight.normal)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
