import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Log in or Sign up',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(
                  color: Colors.black12,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome to Airbnb",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      phoneNumberField(size),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: const TextSpan(
                              text:
                                  "We'll call or text you to conform your number. Standard message and data rates apply.",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                              children: [
                            TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline))
                          ])),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Container(
                          width: size.width,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink),
                          child: const Center(
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

Container phoneNumberField(Size size) {
  return Container(
    width: size.width,
    height: 130,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black45),
        borderRadius: BorderRadius.circular(10)),
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Country/Region',
                style: TextStyle(color: Colors.black45),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nigeria(+234)',
                    style: TextStyle(color: Colors.black45, fontSize: 20),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                  )
                ],
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Phone Number",
                      hintStyle: TextStyle(fontSize: 18, color: Colors.black45),
                      border: InputBorder.none),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
