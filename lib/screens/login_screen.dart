import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/constant/color.dart';
import 'package:healthcare/screens/login_screen.dart';
import 'package:healthcare/screens/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // For smaller screens (e.g., phones)
            return _buildContent(isDesktop: false);
          } else {
            // For larger screens (e.g., desktops)
            return _buildContent(isDesktop: true);
          }
        },
      ),
    );
  }

  Widget _buildContent({required bool isDesktop}) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Image.asset(
                "images/doctors.png",
                height: isDesktop ? 200 : 100, // Adjust the image height
              ),
            ),
            SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter Username",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              child: TextField(
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: const Text("Enter Password"),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: () {
                      if (passToggle == true) {
                        passToggle = false;
                      } else {
                        passToggle = true;
                      }
                      setState(() {});
                    },
                    child: passToggle
                        ? const Icon(CupertinoIcons.eye_slash_fill)
                        : const Icon(CupertinoIcons.eye_fill),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 15), // Equal free space on both sides
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  width: isDesktop ? 400 : 335, // Adjust the button width
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ));
                  },
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7165D6),
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
