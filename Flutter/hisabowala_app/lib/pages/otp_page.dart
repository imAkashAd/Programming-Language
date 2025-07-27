import 'package:flutter/material.dart';
import 'package:hisabowala_app/pages/login_page.dart';
import 'package:hisabowala_app/services/view_registrations.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatefulWidget {
  static String routeName = '/otp';
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginPage.routeName);
              },
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
              ))),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('images/logo.jpeg'),
                width: 200,
              ),
              Text(
                'হিসাবওয়ালা',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 40,
                    shadows: [
                      Shadow(
                        color: Colors.blue.shade800.withOpacity(0.5),
                        offset: const Offset(0, 1),
                        blurRadius: 3,
                      )
                    ]),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'OTP যাচাইকরণ',
                style: TextStyle(color: Colors.blue, fontSize: 30, shadows: [
                  Shadow(
                    color: Colors.blue.shade800.withOpacity(0.5),
                    offset: const Offset(0, 1),
                    blurRadius: 3,
                  )
                ]),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'আপনার মোবাইলে পাঠানো ৬ সংখ্যার কোড টি দিন',
                style: TextStyle(color: Colors.grey, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Pinput(
                length: 6,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                validator: (s) {
                  return s == '123456' ? null : 'পিন কোড ভুল';
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => print(pin),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 45,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ViewRegistrationPage.routeName);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  'ভেরিফাই করুন',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('কোড আসে নি?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('আবার পাঠান'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
