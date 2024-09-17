import 'dart:async';

import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:mechine_test_codanto/view/Screens/Login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return
        // BlocProvider(
        //   create: (context) => LoginBloc()..add(CheckLoginStatusEvent()),
        //   child: BlocListener<LoginBloc, LoginState>(
        //     listener: (context, state) {
        //       Timer(const Duration(seconds: 3), () async {
        //         if (state is authenticated) {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (_) => const HomeScreenWrapper()));
        //         } else if (state is unauthenticated) {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (_) => const signinwrapper()));
        //         } else if (state is AuthenticatedErrorState) {
        //           ScaffoldMessenger.of(context)
        //               .showSnackBar(SnackBar(content: Text(state.message)));
        //         }
        //       });
        //     },
        //     child:
        FlutterSplashScreen.fadeIn(
      nextScreen: const LoginScreen(),
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.white,
      childWidget: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            children: [
              Image.asset("assets/Logo.jpeg"),
              const Padding(
                padding: EdgeInsets.all(6.0),
                child: Text(
                  "Samraat",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                "International",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
