import 'package:flutter/material.dart';
import 'profilepage.dart';
import 'historypage.dart';
import 'settingspage.dart';
import 'map_screen.dart';
import 'home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome Guardian Angel SOS',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          centerTitle: true,
        ),
      ),
      home: const GuardianHomePage(),
    );
  }
}

class GuardianHomePage extends StatefulWidget {
  const GuardianHomePage({super.key});
  @override
  State<GuardianHomePage> createState() => _GuardianHomePageState();
}

class _GuardianHomePageState extends State<GuardianHomePage> {
  int _selectedIndex = 0;

  // Método para lidar com o toque nos itens da BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // navegação ou outras ações
  }

  // Lista de widgets para cada aba
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const ProfileScreen(),
    const HistoryScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.security),
        title: const Text('Guardian Angel SOS'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex), // Mostra o widget correspondente ao índice
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[600],
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

// Telas placeholder para cada aba
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Center(child: Text('Home Screen'));
    return const HomeScreenPage();
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Center(child: Text('Profile Screen'));
    return const ProfilePage();
  }
}

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Center(child: Text('History Screen'));
    return const HistoryPage();
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Center(child: Text('Settings Screen'));
    return const SettingsPage();
  }
}