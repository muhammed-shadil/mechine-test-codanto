import 'package:flutter/material.dart';
import 'package:mechine_test_codanto/utils/constants.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.backgroundColor,
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            size: 30,
          ),
          backgroundColor: Constants.backgroundColor,
          titleSpacing: 0,
          title: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Constants.white,
            ),
            padding: const EdgeInsets.all(10),
            child: const Row(
              children: [
                Icon(
                  Icons.person,
                  size: 35,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: styles.forgotpasswordstyle,
                    ),
                    Text(
                      "Username",
                      style: styles.profilestyle,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Dashboard"),
                Constants.height20,
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 30,
                    ),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          color:
                              Colors.white, // Background color of the container
                          borderRadius:
                              BorderRadius.circular(15), // Rounded corners
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 227, 225, 225)
                                  , // Shadow color with transparency
                              spreadRadius: 1, // How much the shadow spreads
                              blurRadius: 2, // How soft the shadow is
                              offset: Offset(5,
                                  5), // Horizontal and vertical offset of the shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(
                                        255, 254, 192, 192)),
                                child: const Icon(Icons.groups_2_outlined,
                                    size: 50,
                                    color: Color.fromARGB(255, 217, 56, 45)),
                              ), // Example icon
                              Constants.height5,
                              const Text("Manage Members",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      // fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
