import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Welcome Screen', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              if (kDebugMode) {
                print('Search clicked');
              }
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              if (kDebugMode) {
                print('Notifications clicked');
              }
            },
          ),
        ],
        backgroundColor: Colors.teal,
        elevation: 5.0,
        centerTitle: true,
        toolbarHeight: 70.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20), top: Radius.zero),
        ),
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        shadowColor: Colors.grey.shade300,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Add navigation or functionality here
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Add navigation or functionality here
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text('Contact'),
              onTap: () {
                // Add navigation or functionality here
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Welcome to Self Learn',
          style: TextStyle(
            decoration: TextDecoration.none, // Corrected this line
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
