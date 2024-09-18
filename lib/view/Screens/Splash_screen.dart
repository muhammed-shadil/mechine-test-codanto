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
    final size = MediaQuery.of(context).size;
    final heightFactor = size.height * 0.01;
    final widthFactor = size.width * 0.01;
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
          width: size.width * 0.7,
          height: size.height * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/Logo.jpeg",
                width: size.width * 0.6,
                height: size.height * 0.3,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: heightFactor * 1.2),
                child: Text(
                  "Samraat",
                  style: TextStyle(
                    fontSize: heightFactor * 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "International",
                style: TextStyle(
                  fontSize: heightFactor * 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
