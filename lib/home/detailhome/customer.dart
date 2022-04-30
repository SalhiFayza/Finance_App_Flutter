import 'package:appbusiness/home/detailhome/listview.dart';
import 'package:flutter/material.dart';

class CustomersHome extends StatefulWidget {
  const CustomersHome({Key? key}) : super(key: key);

  @override
  _CustomersHomeState createState() => _CustomersHomeState();
}

class _CustomersHomeState extends State<CustomersHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 2,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: Colors.white),
      child: Column(
        children: <Widget>[
          CustomersRow(),
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1.15,
              color: Colors.white,
              child: ListViewC()),
        ],
      ),
    );
  }

  Row CustomersRow() {
    return Row(children: [
      const SizedBox(
        width: 15,
        height: 40,
      ),
      const Text(
        "15 Customers",
        style: TextStyle(
            color: Color(0XFFB2B2B2),
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        width: 90,
      ),
      const Text(
        "View Report",
        style: TextStyle(
            color: Color(0XFFB2B2B2),
            fontSize: 13,
            fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        width: 60,
        height: 20,

        // ignore: deprecated_member_use
        child: OutlineButton(
          onPressed: () {},
          child: const Text(
            'PDF',
            style: TextStyle(
                color: Color(0XFFE27775),
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
          borderSide: const BorderSide(color: Color(0xFFE27775)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
    ]);
  }
}
