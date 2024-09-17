import 'package:flutter/material.dart';
import 'package:mechine_test_codanto/view/Screens/Admin_Home_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 2;

  static final List<Widget> _pages = <Widget>[
    const AdminHomeScreen(),
    const AdminHomeScreen(),
    const AdminHomeScreen(),
    const AdminHomeScreen(),
    const AdminHomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
