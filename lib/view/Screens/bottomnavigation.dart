import 'package:flutter/material.dart';
import 'package:mechine_test_codanto/utils/constants.dart';
import 'package:mechine_test_codanto/view/Screens/Admin_Home_screen.dart';
import 'package:mechine_test_codanto/view/widgets/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 2;

  static final List<Widget> _pages = <Widget>[
    AdminHomeScreen(),
    AdminHomeScreen(),
    AdminHomeScreen(),
    AdminHomeScreen(),
    AdminHomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightFactor = size.height * 0.01;
    final widthFactor = size.width * 0.01;
    return Scaffold(
      key: _scaffoldKey, 
      drawer: const CustomDrawer(),
      backgroundColor: Constants.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            size: 30,
          ),
          onPressed: () {
         
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        backgroundColor: Constants.backgroundColor,
        titleSpacing: 0,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
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
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          _buildBottomNavigationBarItem(
            icon: Icons.chat,
            label: 'Chat',
            isSelected: _selectedIndex == 0,
          ),
          _buildBottomNavigationBarItem(
            icon: Icons.group,
            label: 'Members',
            isSelected: _selectedIndex == 1,
          ),
          _buildBottomNavigationBarItem(
            icon: Icons.home,
            label: 'Home',
            isSelected: _selectedIndex == 2,
          ),
          _buildBottomNavigationBarItem(
            icon: Icons.layers,
            label: 'Resources',
            isSelected: _selectedIndex == 3,
          ),
          _buildBottomNavigationBarItem(
            icon: Icons.photo,
            label: 'Gallery',
            isSelected: _selectedIndex == 4,
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required IconData icon,
    required String label,
    required bool isSelected,
  }) {
    return BottomNavigationBarItem(
      icon: isSelected
          ? Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                  Text(
                    label,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          : Icon(icon),
      label: isSelected ? '' : label,
    );
  }
}
