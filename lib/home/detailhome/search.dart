import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -50,
      left: 20.0,
      right: 20.0,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10.0, right: 10.0),
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          height: 50.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: TextField(
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              prefixIcon: IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {},
                iconSize: 30.0,
              ),
              hintText: "Search",
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(left: 15.0, top: 15.0),
            ),
          ),
        ),
      ),
    );
  }
}
