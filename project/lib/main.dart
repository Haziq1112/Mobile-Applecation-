import 'package:flutter/material.dart';
import 'about_me.dart';
import 'skills.dart';
import 'projects_experience.dart';
import 'education.dart';
import 'interests.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
        elevation: 2.0,
      ),
      body: Container(
        color: Colors.black87, // Dark background
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildStyledButton(context, 'About Me', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutMeScreen()),
                  );
                }),
                const SizedBox(height: 15),
                _buildStyledButton(context, 'Skills', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SkillsScreen()),
                  );
                }),
                const SizedBox(height: 15),
                _buildStyledButton(context, 'Projects & Experience', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProjectsExperienceScreen()),
                  );
                }),
                const SizedBox(height: 15),
                _buildStyledButton(context, 'Education', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EducationScreen()),
                  );
                }),
                const SizedBox(height: 15),
                _buildStyledButton(context, 'Interests', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const InterestsScreen()),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStyledButton(BuildContext context, String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: Colors.cyanAccent, // Accent color for buttons
        foregroundColor: Colors.black, // Text color
        shadowColor: Colors.cyan.withOpacity(0.5),
        elevation: 8, // Softer 3D shadow effect
        side: BorderSide(color: Colors.cyanAccent.withOpacity(0.8), width: 1.5), // Border color and width
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 18, // Font size for emphasis
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2, // Add spacing for a cleaner look
        ),
      ),
    );
  }
}
 