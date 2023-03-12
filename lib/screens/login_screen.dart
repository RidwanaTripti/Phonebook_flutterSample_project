import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10))),
    minimumSize: Size(500, 50),
    backgroundColor: Colors.blue,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "আপনার ",
                        style: TextStyle(fontSize: 25.0, color: Colors.black),
                        children: [
                          TextSpan(
                              text: "একাউন্টে",
                              style: TextStyle(color: Colors.blue)),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: "লগ-ইন করুন",
                        style: TextStyle(fontSize: 25.0, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "আপনার মোবাইল নাম্বার দিন",
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              hintText: "আপনার পাসওয়ার্ড দিন",
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "প্রবেশ করুন ",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Icon(
                                      FontAwesomeIcons.chevronRight,
                                      size: 12.0,
                                    )
                                  ],
                                ),
                                style: buttonStyle,
                              ),
                              SizedBox(height: 15),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "পাসওয়ার্ড ভুলে গেছেন?",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationStyle:
                                          TextDecorationStyle.solid,
                                      decorationColor: Colors.blueAccent,
                                      decorationThickness: 2.0),
                                ),
                              ),
                              SizedBox(height: 30),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("নতুন একাউন্ট তৈরী করুন"),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(250.0, 50.0),
                                  backgroundColor:
                                      Color.fromARGB(255, 29, 110, 175),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
