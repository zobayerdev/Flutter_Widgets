import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StackPositionScreen extends StatefulWidget {
  const StackPositionScreen({super.key});

  @override
  State<StackPositionScreen> createState() => _StackPositionScreenState();
}

class _StackPositionScreenState extends State<StackPositionScreen> {
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
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none, // property niche geleo upore dekhabe
            children: [
              // Base area
              Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1420440/pexels-photo-1420440.jpeg'),
                      fit: BoxFit.cover),
                ),
              ),

              // profile picture
              Positioned(
                left: 120,
                right: 120,
                bottom: -50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(180),
                  child: Image.network(
                    'https://images.pexels.com/photos/29028778/pexels-photo-29028778/free-photo-of-portrait-of-a-bearded-man-wearing-headphones.jpeg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //
              Positioned(
                bottom: -45,
                right: 150,
                child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: GestureDetector(
                        child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ))),
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          const Text('Galib Vhaai'),
          const Text('Flutter Developer'),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // top & bottom usable
            // crossAxisAlignment: CrossAxisAlignment.start, // right & left usable
            children: [
              Icon(Icons.facebook),
              Icon(Icons.facebook),
              Icon(Icons.facebook),
              Icon(Icons.facebook),
            ],
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text('Galib vhai'))),
              Expanded(
                flex: 2,
                child:
                    ElevatedButton(onPressed: () {}, child: Text('Nayem vhai')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
