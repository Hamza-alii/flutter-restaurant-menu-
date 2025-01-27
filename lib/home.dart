import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 56, 51, 38),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 42, 20, 70),
          title: Row(
            children: [
              Text(
                'Wow Pizza',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '3');
                },
                child: Icon(Icons.tiktok, size: 40, color: Colors.white,),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '4');
                },
                child: Icon(Icons.facebook,size: 40, color: Colors.white,),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 40), // 5% of screen height
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 10,
                  runSpacing: 10, // Spacing between the rows
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        side: BorderSide(color: Colors.white),
                        backgroundColor: const Color.fromARGB(255, 58, 45, 45),
                        
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Add padding inside the button
                      ),
                      child: Text(
                        'V Pizza',
                        style: TextStyle(fontSize: 15 , color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '0');
                      },
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        side: BorderSide(color: Colors.white),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            backgroundColor: const Color.fromARGB(255, 58, 45, 45),
                      ),
                      child: Text(
                        'Ch pizza',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '1');
                      },
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        side: BorderSide(color: const Color.fromARGB(255, 241, 243, 241)),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            backgroundColor: const Color.fromARGB(255, 58, 45, 45),
                      ),
                      child: Text(
                        'Fries',
                        style: TextStyle(fontSize: 15, color: Colors.white,),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '2');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.05),
              Expanded(
                child: Center(
                  child: Column(
                    children: [
                    Container(
                     margin: EdgeInsets.all(16),
                     height: 150,
                     decoration: BoxDecoration(
                     color: Colors.grey[200],
                     borderRadius: BorderRadius.circular(8),
                     image: DecorationImage(
                     image: AssetImage('image/meal.jpg'), // Replace with your image asset
                     fit: BoxFit.cover,
                    ),
                    ),
                    ),
                    SizedBox(height: 20),
                      Text(
                        'HI, I am the pizza assistant. What can I help you with?',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}