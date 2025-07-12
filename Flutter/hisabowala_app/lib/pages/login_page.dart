import 'package:flutter/material.dart';
import 'package:hisabowala_app/pages/home_page.dart';
import 'package:hisabowala_app/pages/otp_page.dart';
import 'package:hisabowala_app/pages/registration_page.dart';

class LoginPage extends StatefulWidget {
  static String routeName = '/';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController countrycode = TextEditingController();
  @override
  void initState() {
    countrycode.text = "+880";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'লগইন করুন',
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
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'আপনার মোবাইল নম্বর দিন',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countrycode,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      '|',
                      style: TextStyle(fontSize: 30, color: Colors.grey),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '19XXXXXXXX',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'আপনার পাসওয়ার্ড দিন',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'পাসওয়ার্ড',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              // Container(
              //   decoration: BoxDecoration(
              //       gradient: LinearGradient(
              //           colors: [Colors.blue.shade700, Colors.blueAccent],
              //           begin: Alignment.topLeft,
              //           end: Alignment.bottomRight),
              //       borderRadius: BorderRadius.circular(10),
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.2),
              //           spreadRadius: 2,
              //           blurRadius: 5,
              //           offset: const Offset(0, 4),
              //         )
              //       ]
              //       ),
                // padding:
                //     const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                // child: const Text(
                //   'লগইন করুন',
                //   style: TextStyle(
                //     color: Colors.white, // Text color
                //     fontSize: 20, // Font size
                //     fontWeight: FontWeight.bold, // Text weight
                //   ),
                // ),
              // ),
              
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.routeName);
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade900, 
                  padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 30), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, 
                  children: [
                    Text(
                      'লগইন করুন',
                      style: TextStyle(
                        fontSize: 18, 
                        fontWeight: FontWeight.bold, 
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_ios_rounded, 
                      color: Colors.white, 
                    ),
                  ],
                ),
                // style: ElevatedButton.styleFrom(
                //   shape: const CircleBorder(),
                //   padding: const EdgeInsets.all(20),
                //   backgroundColor: Colors.white,
                // ),
                // child: const Icon(
                //   Icons.arrow_forward_ios_rounded, // Arrow icon
                //   color: Colors.blue, // Icon color
                //   size: 30, // Icon size
                // ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    child: Text('একাউন্ট না থাকলে'),
                  ),
                  SizedBox(
                    child: TextButton(onPressed: (){
                      Navigator.pushNamed(context, RegistrationPage.routeName);
                    }, 
                    child: const Text('রেজিস্ট্রেশন'),
                    ),
                  ),
                  
                  const SizedBox(
                    child: Text('করুন'),
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
