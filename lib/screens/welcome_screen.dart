// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:healthcare/screens/login_screen.dart';
import 'package:healthcare/screens/sign_up_screen.dart';

// ignore: use_key_in_widget_constructors
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            // SizedBox(height: 5),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: TextButton(
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => NavBarRoots(),
            //           ));
            //     },
            //     child: Text(
            //       "SKIP",
            //       style: TextStyle(
            //         color: Color(0xFF7165D6),
            //         fontSize: 20,
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset("images/doctors.png"),
            ),
            // SizedBox(height: 5),
            Text(
              "Doctors Appointment",
              style: TextStyle(
                color: Color(0xFF7165D6),
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
            // SizedBox(height: 5),
            Text(
              "Appoint Your Doctor",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            // SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => loginScreen(),
                          ));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
