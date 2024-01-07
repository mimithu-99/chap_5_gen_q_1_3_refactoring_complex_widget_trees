import 'package:flutter/material.dart';
/*

3: Refactoring Complex Widget Trees
Task: Refactor the provided ProfileScreen widget into smaller, more manageable components, ensuring each component handles a specific piece of functionality.

*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Profile Demo'),
      ),
      body: Column(
          children: const [ProfileImage(), ProfileDetails(), ProfileActions()]),
    ));
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: ClipOval(
        
        child: Image.asset('asset/mithu.jpg', height: 250, width: 250, fit: BoxFit.fitWidth,),
        
      ),
    );
  }
}

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
           padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(borderRadius: BorderRadius.only() 
        ),
      child:  const Text('MD Monirul Islam Mithu',
      
       style: TextStyle(
        color: Colors.black, 
        fontSize: 50, 
        fontWeight: 
        FontWeight.bold),
        ),
        

    );
  }
}

class ProfileActions extends StatelessWidget {
  const ProfileActions({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){ }, icon: const Icon(Icons.person));
    
  }
}
