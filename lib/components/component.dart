import 'package:flutter/material.dart';

Widget MyButton({
  required final String? text,
  required final VoidCallback? OnClick,
  final double? width = double.infinity,
  final Color? background = Colors.blue,
  final double raduis = 5.0,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
          color: background, borderRadius: BorderRadius.circular(raduis)),
      child: MaterialButton(
        onPressed: OnClick,
        child: Text(
          '${text}',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );


Widget defaultFormField({
  required TextInputType type,
  required String text,
  IconData? suffix,
  VoidCallback? OnTap,
  double hight = 45.0,

}) =>
    Container(
      height: hight,
      child: TextFormField(
        onTap: OnTap,
        keyboardType: type,
        decoration: InputDecoration(
          hintText: text,
          border: OutlineInputBorder(),
        ),
      ),
    );


Widget defaultOutLineButton()=>Container(
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