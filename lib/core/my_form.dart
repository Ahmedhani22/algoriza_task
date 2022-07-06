import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  final double hight;
  final VoidCallback OnTap;
  final TextInputType type;
  final String text;




  const MyForm({
    Key? key,
    required this.OnTap,
    required this.text,
    required this.type,
    this.hight=45.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
