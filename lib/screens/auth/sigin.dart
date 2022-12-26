import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final phonenumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: navBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                        color: const Color(0xFFfff0f2),
                        child: Image.asset(
                          'images/auth1.png',
                          fit: BoxFit.contain,
                        ))),
                Expanded(
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Welcome Back',
                            style: TextStyle(
                                color: Color(0xFFC5192D),
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text('Sign in to your account'),
                          const SizedBox(
                            height: 50,
                          ),
                          IntlPhoneField(
                            flagsButtonPadding: const EdgeInsets.all(8),
                            dropdownIcon: const Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xFFC5192D),
                            ),
                            controller: phonenumberController,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(226, 225, 225, 1),
                              labelText: 'Enter Phone Number',
                              labelStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(style: BorderStyle.none),
                              ),
                              focusedBorder: OutlineInputBorder(),
                            ),
                            initialCountryCode: 'IN',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Continue',
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFFC5192D),
                                  onPrimary: Colors.white,
                                  minimumSize: const Size(double.infinity, 60),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
