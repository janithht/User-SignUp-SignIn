// ignore_for_file: prefer_const_constructors, slash_for_doc_comments

import 'package:flutter/material.dart';
import 'package:frontend/loginscreen.dart';

/**
 * This is the home page widget
 */

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                child: IconButton(
                  icon: Icon(Icons.photo_album_outlined),
                  color: Colors.black,
                  onPressed: () {
                    
                  },
                ),
              ),
              PopupMenuItem(
                child: IconButton(
                  icon: Icon(Icons.logout),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
