import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final double width;
  final VoidCallback OnClick;
  final Color ?background;
  final String text;
  final double raduis;

  const Mybutton({
    Key? key,
    required this.OnClick,
    required this.text,
    this.width=double.infinity,
    this.raduis =5.0,
    this.background=const Color(0xff55b1f0),



  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
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
  }
}
