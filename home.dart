
import 'package:flutter/material.dart';
/*
import 'package:flutter_application_1/apiManager.dart';
import 'package:flutter_blue/flutter_blue.dart';*/

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {

    int selectedIndex = 0;

    void onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
      switch (index) {
        case 0:
          Navigator.pushNamed(context, '/');
          break;
        case 1:
          Navigator.pushNamed(context, '/ble');
          break;
        case 2:
          Navigator.pushNamed(context, '/api');
          break;
      }
    }


    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: onItemTapped,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.bluetooth), label: 'Bluetooth Manager'),
          NavigationDestination(icon: Icon(Icons.api), label: 'API Manager'),
        ],
      ),  
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    )
    
    
    ;
  }
}