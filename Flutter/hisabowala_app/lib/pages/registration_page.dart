import 'package:flutter/material.dart';
import 'package:hisabowala_app/services/listview.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:hisabowala_app/pages/otp_page.dart';
import 'package:hisabowala_app/services/database_helper.dart';

class RegistrationPage extends StatefulWidget {
  static String routeName = '/registration';
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool isChecked = false;

  final TextEditingController storeNameController = TextEditingController();
  final TextEditingController ownerNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              Container(
                width: 130,
                height: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_a_photo_outlined,
                        size: 40,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'আপনার ছবি দিন',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'আপনার ব্যাবসার তথ্য সহজে যোগ করুন',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade700,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -10),
                    child: Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(3, 3),
                          ),
                        ],
                      ),
                      child: const Icon(Icons.store, color: Colors.blue),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: storeNameController,
                            decoration: InputDecoration(
                              labelText: 'দোকানের নাম লিখুন',
                              labelStyle: const TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'যেমন: আলম স্টোর, রহিম মার্কেট',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -10),
                    child: Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(3, 3),
                          ),
                        ],
                      ),
                      child: const Icon(Icons.person, color: Colors.blue),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: ownerNameController,
                            decoration: InputDecoration(
                              labelText: 'দোকানের মালিক/পরিচালক',
                              labelStyle: const TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'মালিকের নাম লিখুন',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -10),
                    child: Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(3, 3),
                          ),
                        ],
                      ),
                      child: const Icon(Icons.fact_check_sharp,
                          color: Colors.blue),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              TextField(
                                controller: categoryController,
                                decoration: InputDecoration(
                                  labelText: '--নির্বাচন করুন--',
                                  labelStyle:
                                      const TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                ),
                              ),
                              Positioned(
                                right: 10,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'আপনার ব্যবসার প্রধান ধরণ',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -10),
                    child: Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(3, 3),
                          ),
                        ],
                      ),
                      child: const Icon(Icons.merge_type_outlined,
                          color: Colors.blue),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: addressController,
                            decoration: InputDecoration(
                              labelText: 'দোকানের সম্পূর্ণ ঠিকানা',
                              labelStyle: const TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'গ্রাম/রোড, এলাকা, থানা, জেলা',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -10),
                    child: Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(3, 3),
                          ),
                        ],
                      ),
                      child: const Icon(Icons.lock, color: Colors.blue),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(3, 3),
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: passwordController,
                            decoration: InputDecoration(
                              labelText: 'পাসওয়ার্ড',
                              labelStyle: const TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'আপনার পাসওয়ার্ড দিন',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: passwordController,
                            decoration: InputDecoration(
                              labelText: 'পাসওয়ার্ড',
                              labelStyle: const TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'পুনরায় আপনার পাসওয়ার্ড দিন',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -10),
                    child: Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(3, 3),
                          ),
                        ],
                      ),
                      child: const Icon(Icons.call, color: Colors.blue),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: mobileController,
                            decoration: InputDecoration(
                              labelText: 'মোবাইল নম্বর দিন',
                              labelStyle: const TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'আপনার ১১ সংখার মোবাইল নম্বর টি দিন',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isChecked = newValue ?? false;
                      });
                    },
                  ),
                  const Text('আমি'),
                  TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {},
                      child: const Text('সকল শর্ত')),
                  const Text('ও '),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {},
                    child: const Text('গোপনীয়তা নীতি '),
                  ),
                  const Text('মেনে নিচ্ছি'),
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                // In your ElevatedButton onPressed:
onPressed: () async {
  if (storeNameController.text.isNotEmpty &&
      ownerNameController.text.isNotEmpty &&
      categoryController.text.isNotEmpty &&
      addressController.text.isNotEmpty &&
      passwordController.text.isNotEmpty &&
      mobileController.text.isNotEmpty &&
      isChecked) {
    try {
      final row = {
        'store_name': storeNameController.text,
        'owner_name': ownerNameController.text,
        'category': categoryController.text,
        'address': addressController.text,
        'password': passwordController.text,
        'mobile': mobileController.text
      };
      await DatabaseHelper.instance.insertRegistration(row);
      
      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Registration successful!')),
      );
      
      // Navigate to registration list or OTP page
      Navigator.pushNamed(context, OtpPage.routeName);
      // Or if you want to go to OTP page:
      // Navigator.pushNamed(context, OtpPage.routeName);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Please fill all fields and accept terms')),
    );
  }
},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade900,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'রেজিস্ট্রেশন করুন',
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
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
