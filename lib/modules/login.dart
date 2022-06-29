
import 'package:algoriza_testt/modules/register.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../components/component.dart';


class LoginPage extends StatelessWidget {
  var textController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBar(
          elevation: 0.0,
          flexibleSpace: Image(
            height: 230.0,
            image: AssetImage('assets/images/4.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome to Fashion Daily',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Sign in',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Text('Help'),
                          const SizedBox(
                            width: 5.0,
                          ),
                          SizedBox(
                              height: 17.0,
                              width: 17.0,
                              child: FittedBox(
                                  child: FloatingActionButton(
                                    elevation: 0.0,
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.question_mark,
                                      size: 25.0,
                                    ),
                                  )))
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: InternationalPhoneNumberInput(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'phone number is not register ';
                        }
                      },
                      onInputChanged: (index) {},
                      keyboardType: TextInputType.phone,
                      hintText: 'EG.121565685',
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: TextStyle(color: Colors.black),
                      formatInput: false,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  MyButton(
                      text: 'Sign In',
                      OnClick: () {
                        if (formKey.currentState!.validate()) ;
                      }),
                  const Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Center(child: Text('or')),
                  ),
                  defaultOutLineButton(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Doesn\'t has any account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        child: const Text('Register here'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Use the application according to policy rules . Any Kinds of violations will be subject to sanctions.',
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
