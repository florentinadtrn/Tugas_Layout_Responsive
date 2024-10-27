import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layout Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blueGrey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Dasboard',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.white), // Ikon untuk Menu 1
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.white), // Ikon untuk Menu 2
                    title: Text(
                      'Settings',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.info, color: Colors.white), // Ikon untuk Menu 3
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {},
                  ),
                   ListTile(
                    leading: Icon(Icons.person, color: Colors.white), // Ikon untuk Menu 4
                    title: Text(
                      'Akun',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          // Main Content Area
          Expanded(
            flex: 4,
            child: Column(
              children: [
                // Header
                Container(
                  height: 60,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Travelease',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // Content
                Expanded(
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Column( 
                        children: [
                          Text(
                            'Welcome to Travelease,Teman Perjalanan Inklusif Anda',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
