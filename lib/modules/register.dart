
import 'package:algoriza_testt/components/component.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';



class RegisterScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          leading:Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(80.0),
                  color: Colors.black,
                ),

                child: IconButton(icon: Icon(Icons.arrow_back_ios,size: 15.0,),onPressed: (){
                  Navigator.of(context).pop();
                },)),
          ),
          elevation: 0.0,
          flexibleSpace: Image(
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
                  height: 40.0,
                ),
                Text('Email'),
                defaultFormField(
                    type: TextInputType.emailAddress,
                    text: 'EG. example@email.com'
                ),
                SizedBox(
                  height: 20.0,
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
                Text('Password'),
                defaultFormField(type: TextInputType.visiblePassword, text: 'password'),
                SizedBox(
                  height: 20.0,
                ),
                MyButton(text: 'Register', OnClick: () {}),
                SizedBox(
                  height: 20.0,
                ),
                defaultOutLineButton(),
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
                        onPressed: () {}, child: Text('terms and condition')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
