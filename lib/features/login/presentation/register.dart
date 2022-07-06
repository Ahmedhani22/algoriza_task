import 'package:algoriza_testt/core/my_button.dart';
import 'package:algoriza_testt/core/my_form.dart';
import 'package:algoriza_testt/core/my_outlinebutton.dart';
import 'package:country_code_picker/country_code_picker.dart';

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegisterScreen extends StatelessWidget {
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
            flex: 4,
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
                              'Register',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      'Help',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Icon(Icons.help, size: 17.0),
                                  ],
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          'Email',
                        ),
                        MyForm(
                          type: TextInputType.emailAddress,
                          text: 'EG. example@email.com',
                          OnTap: () {},
                        ),
                        SizedBox(
                          height: 20.0,
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
                        Text('Password'),
                        MyForm(
                          type: TextInputType.visiblePassword,
                          text: 'password',
                          OnTap: () {},
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Mybutton(text: 'Register', OnClick: () {}),
                        SizedBox(
                          height: 20.0,
                        ),
                        MyOutLineButton(),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Has any account ?'),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Sign in here'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'By registering your account you are agree to our',
                            style: TextStyle(color: Colors.grey, fontSize: 15.0),
                          ),
                        ),
                        Center(
                            child: TextButton(
                                onPressed: () {},
                                child: Text('terms and condition')))
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
