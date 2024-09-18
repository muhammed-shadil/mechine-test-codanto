import 'package:flutter/material.dart';
import 'package:mechine_test_codanto/utils/constants.dart';
import 'package:mechine_test_codanto/view/Screens/bottomnavigation.dart';
import 'package:mechine_test_codanto/view/widgets/main_button.dart';
import 'package:mechine_test_codanto/view/widgets/main_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightFactor = size.height * 0.01;
    final widthFactor = size.width * 0.01;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.5,
              width: size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 252, 109, 99),
                    Color.fromARGB(255, 208, 41, 29),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(widthFactor * 4),
                child: Image.asset(
                  "assets/Logo-removebg-preview.png",
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.78,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: heightFactor * 2),
                    child: const Text(
                      "Login",
                      style: styles.loginstyle,
                    ),
                  ),
                  MainTextfield(
                    hinttext: "enter your username/ memebership id",
                    namefield: "Username / Memebership id",
                    validator: (_) {},
                    suffixIcon: null,
                    keyboard: TextInputType.emailAddress,
                  ),
                  SizedBox(height: heightFactor * 2),
                  MainTextfield(
                    hinttext: "enter your password",
                    namefield: "Password",
                    validator: (_) {},
                    suffixIcon: Icons.remove_red_eye,
                    keyboard: TextInputType.emailAddress,
                  ),
                  SizedBox(height: heightFactor * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      const Text(
                        "Forgot Password?",
                        style: styles.forgotpasswordstyle,
                      ),
                    ],
                  ),
                  SizedBox(height: heightFactor * 4),
                  MainButton(
                    child: Padding(
                      padding: EdgeInsets.all(heightFactor * 1.2),
                      child: const Text(
                        "Login",
                        style: styles.buttontextstyle,
                      ),
                    ),
                    onpressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const MyHomePage()));
                    },
                  ),
                  SizedBox(height: heightFactor * 2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
