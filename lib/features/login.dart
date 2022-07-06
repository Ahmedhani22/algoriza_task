
import 'package:algoriza_testt/core/my_button.dart';
import 'package:algoriza_testt/core/my_outlinebutton.dart';
import 'package:algoriza_testt/features/register.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';




class LoginPage extends StatelessWidget {
  var textController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Image.asset(
                'assets/images/4.png',
                width: double.infinity,
                fit: BoxFit.cover,
              )),
          Expanded(
            flex: 3,
            child: Center(
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
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your phone number';
                            }

                            return null;
                          },
                          keyboardType: TextInputType.phone,
                          controller: phoneController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            hintText: '5484781',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            prefixIcon: CountryCodePicker(
                              onChanged: (CountryCode countryCode) {},
                              initialSelection: 'EG',
                              showFlag: true,
                              favorite: const ['+20', 'EG'],
                              showCountryOnly: false,
                              showOnlyCountryWhenClosed: false,
                              alignLeft: false,
                              showDropDownButton: true,
                              padding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Mybutton(
                            text: 'Sign In',
                            OnClick: () {
                              if (formKey.currentState!.validate()) ;
                            }),
                        const Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Center(child: Text('or')),
                        ),
                        MyOutLineButton(),
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
          ),
        ],
      ),
    );
  }
}
