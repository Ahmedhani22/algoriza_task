import 'package:flutter/material.dart';

class MyOutLineButton extends StatelessWidget {

  const MyOutLineButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 45.0,
        child: OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.blue)),
            onPressed: () {},
            icon: Image.asset(
              'assets/images/6.png',
              width: 25.0,
              height: 25.0,
            ),
            label: Text('Sign with by google')));
  }
}
