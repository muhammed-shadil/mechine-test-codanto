import 'package:flutter/material.dart';
import 'package:mechine_test_codanto/utils/constants.dart';
import 'package:mechine_test_codanto/view/Screens/bottomnavigation.dart';
import 'package:mechine_test_codanto/view/widgets/main_button.dart';
import 'package:mechine_test_codanto/view/widgets/main_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
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
                    bottomRight: Radius.circular(50))),
            child: Image.asset("assets/Logo-removebg-preview.png"),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.78,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
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
                Constants.height20,
                MainTextfield(
                  hinttext: "enter your password",
                  namefield: "Password",
                  validator: (_) {},
                  suffixIcon: Icons.remove_red_eye,
                  keyboard: TextInputType.emailAddress,
                ),
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
                Constants.height50,
                MainButton(
                  child: const Padding(
                    padding: EdgeInsets.all(9.0),
                    child: Text(
                      "Login",
                      style: styles.buttontextstyle,
                    ),
                  ),
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const MyHomePage()));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
