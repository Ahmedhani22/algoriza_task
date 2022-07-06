
import 'package:algoriza_testt/core/my_button.dart';
import 'package:algoriza_testt/features/login.dart';
import 'package:algoriza_testt/features/register.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

class BoardingScreen extends StatefulWidget {
  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  var boardController = PageController();
  var indicatorController = PageController();
  bool isLast = false;

  List<BoardingModel> boarding = [
    BoardingModel(
        image: 'assets/images/1.png',
        title: 'Get food delivery to your doorstep asap',
        body:'We have young and professional delivery team that will bring your food as soon as possible to your doorstep'
    ),
    BoardingModel(
        image: 'assets/images/2.png',
        title: 'Buy any food from yor favorite restaurant',
        body:'We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected'

    )];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white12,
          elevation: 0.0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: TextButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all(Color(0xff55b1f0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text('Skip')),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
          RichText(text: const TextSpan(
          text: '7',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w500,
              color: Color(0xffefe760),
            ),
            children: [
              TextSpan(
                  text: 'Krave',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff55b1f0),
                  )
              )
              ,],

          ) ,),
              Expanded(
                child: PageView.builder(
                  onPageChanged: (int index) {
                    if (index == boarding.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                  controller: boardController,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      buildBoargingItems(boarding[index]),
                  itemCount: boarding.length,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SmoothPageIndicator(
                effect: ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  dotHeight: 10.0,
                  dotWidth: 10.0,
                  spacing: 5.0,
                  expansionFactor: 4,
                  activeDotColor: Color(0xff55b1f0),
                ),
                controller: boardController,
                count: boarding.length,
              ),
              SizedBox(
                height: 20.0,
              ),
              Mybutton(
                  text: 'Get Started',
                  OnClick: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: Text('Sign Up'))
                ],
              ),
            ],
          ),
        ));
  }

  Widget buildBoargingItems(BoardingModel model) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image(
          height: 250.0,
          width: double.infinity,
          image: AssetImage('${model.image}'),

        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      Expanded(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Text(textAlign: TextAlign.center,'${model.title}',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0,),
              Text(textAlign: TextAlign.center,'${model.body}',style: TextStyle(color: Colors.grey),),
              SizedBox(height:10.0)

            ],
          ),
        ),
      ),

    ],
  );
}
