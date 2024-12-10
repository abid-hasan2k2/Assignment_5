import 'package:flutter/material.dart';

void main() {
  runApp(ProgrammingLanguagesApp());
}

class ProgrammingLanguagesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Programming Languages',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> languages = [
    {
      "name": "Python",
      "description": "A versatile language used in web development, AI, and more.",
      "logo": "https://upload.wikimedia.org/wikipedia/commons/c/c3/Python-logo-notext.svg"
    },
    {
      "name": "JavaScript",
      "description": "The language of the web for building interactive websites.",
      "logo": "https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png"
    },
    {
      "name": "Java",
      "description": "A popular language for backend development and Android apps.",
      "logo": "https://upload.wikimedia.org/wikipedia/en/3/30/Java_programming_language_logo.svg"
    },
    {
      "name": "C++",
      "description": "A powerful language for system programming and game development.",
      "logo": "https://upload.wikimedia.org/wikipedia/commons/1/18/C_Programming_Language.svg"
    },
    {
      "name": "Dart",
      "description": "The language behind Flutter for building beautiful UIs.",
      "logo": "https://upload.wikimedia.org/wikipedia/commons/f/fe/Dart_programming_language_logo.svg"
    },
    {
      "name": "Ruby",
      "description": "A dynamic, open-source language with a focus on simplicity.",
      "logo": "https://upload.wikimedia.org/wikipedia/commons/7/73/Ruby_logo.svg"
    },
    {
      "name": "Swift",
      "description": "A language for iOS and macOS app development.",
      "logo": "https://upload.wikimedia.org/wikipedia/commons/9/9d/Swift_logo.svg"
    },
    {
      "name": "Go",
      "description": "A statically typed language designed at Google.",
      "logo": "https://upload.wikimedia.org/wikipedia/commons/0/05/Go_Logo_Blue.svg"
    },
    {
      "name": "PHP",
      "description": "A popular language for server-side web development.",
      "logo": "https://upload.wikimedia.org/wikipedia/commons/2/27/PHP-logo.svg"
    },
    {
      "name": "Kotlin",
      "description": "A modern language for Android development and more.",
      "logo": "https://upload.wikimedia.org/wikipedia/commons/7/74/Kotlin_Icon.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Programming Languages'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(languages[index]['logo']!),
              ),
              title: Text(
                languages[index]['name']!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(languages[index]['description']!),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Selected: ${languages[index]['name']}'),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
