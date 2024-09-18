import 'package:flutter/material.dart';
import 'package:mechine_test_codanto/utils/constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightFactor = size.height * 0.01;
    final widthFactor = size.width * 0.01;
    return Drawer(
      backgroundColor: Colors.red[600],
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Constants.white,
              ),
              padding: EdgeInsets.all(widthFactor * 3),
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
          Expanded(
            child: ListView.builder(
                itemCount: ListItems.draweritems.length,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                itemBuilder: (BuildContext context, int index) =>
                    buildDrawerItem(
                      icon: ListItems.draweritems[index]["icon"],
                      text: ListItems.draweritems[index]["text"],
                      isSelected: ListItems.draweritems[index]["isSelected"],
                      onTap: ListItems.draweritems[index]["onTap"],
                    )),
          ),
        ],
      ),
    );
  }

  Widget buildDrawerItem({
    required IconData icon,
    required String text,
    required Function() onTap,
    bool isSelected = false,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.transparent, width: 0),
        borderRadius: BorderRadius.circular(20),
      ),
      leading: Icon(
        icon,
        color: Colors.white,
        size: 35,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      selected: isSelected,
      selectedTileColor: const Color.fromARGB(255, 241, 128, 128),
      onTap: onTap,
    );
  }
}
