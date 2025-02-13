import 'package:flutter/material.dart';

class Cheese extends StatelessWidget {
  const Cheese({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 42, 20, 70),
          title: Row(
            children: [
              const Text(
                'Cheese Pizza',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '3');
                },
                child: const Icon(Icons.tiktok, size: 40, color: Colors.white),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '4');
                },
                child: const Icon(Icons.facebook, size: 40, color: Colors.white),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: const StadiumBorder(),
                        side: const BorderSide(color: Colors.white),
                        backgroundColor: const Color.fromARGB(255, 58, 45, 45),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      child: const Text(
                        'V Pizza',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '0');
                      },
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: const StadiumBorder(),
                        side: const BorderSide(color: Colors.white),
                        backgroundColor: const Color.fromARGB(255, 58, 45, 45),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      child: const Text(
                        'Ch Pizza',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '1');
                      },
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: const StadiumBorder(),
                        side: const BorderSide(color: Colors.white),
                        backgroundColor: const Color.fromARGB(255, 58, 45, 45),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      child: const Text(
                        'Fries',
                        style: TextStyle(fontSize: 15, color: Colors.white),
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
                        margin: const EdgeInsets.all(16),
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('image/cheese.jpg'), // Ensure this path is correct
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Delicious cheese pizza with a blend of mozzarella and cheddar cheese.',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Implement order functionality here
                        },
                        child: const Text('Order Now'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green, // Button color
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        ),
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