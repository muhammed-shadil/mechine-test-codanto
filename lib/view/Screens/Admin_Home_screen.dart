import 'package:flutter/material.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({super.key});

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightFactor = size.height * 0.01;
    final widthFactor = size.width * 0.01;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(widthFactor * 8), // Adjusted padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Dashboard"),
              SizedBox(height: heightFactor * 2), // Responsive spacing
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        size.width > 600 ? 3 : 2, // Adaptive column count
                    mainAxisSpacing: heightFactor * 4,
                    crossAxisSpacing: widthFactor * 8,
                    childAspectRatio:
                        size.width > 600 ? 1.2 : 1, // Adjust grid item ratio
                  ),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 227, 225, 225),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(widthFactor * 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(heightFactor * 1.2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 254, 192, 192),
                              ),
                              child: Icon(
                                Icons.groups_2_outlined,
                                size:
                                    size.height * 0.05, // Responsive icon size
                                color: const Color.fromARGB(255, 217, 56, 45),
                              ),
                            ),
                            SizedBox(height: heightFactor * 0.5),
                            const Text(
                              "Manage Members",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
