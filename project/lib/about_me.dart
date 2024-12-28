import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'skills.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        backgroundColor: Colors.cyanAccent, // Dark AppBar
      ),
      body: Container(
        color: Colors.black87, // Dark background
        child: Stack(
          children: [
            // Main Content
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/myimage.HEIC'),
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Hello, I\'m Haziq Ahmad !!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyanAccent, 
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors
                          .grey[850], // Slightly lighter dark for contrast
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.cyanAccent, width: 1),
                    ),
                    child: const Text(
                      'I am a passionate Flutter developer with a keen interest in creating beautiful and functional mobile applications. \n\n'
                      'With a strong foundation in Dart and experience in building user-friendly interfaces, I strive to deliver high-quality solutions.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.white70, // Light text for readability
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Navigation Buttons
            Positioned(
              bottom: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyanAccent, // Accent color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    child: const Text(
                      '<',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    '1',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyanAccent, // Accent color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SkillsScreen()),
                      );
                    },
                    child: const Text(
                      '>',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
