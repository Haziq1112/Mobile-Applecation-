import 'package:flutter/material.dart';
import 'about_me.dart';
import 'projects_experience.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Container(
        color: Colors.black87, 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView( 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'My Skills',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyanAccent, // Highlighted text color
                  ),
                ),
                const SizedBox(height: 20),
                _buildSkill(context, 'Flutter', 0.9),
                const SizedBox(height: 15),
                _buildSkill(context, 'Dart', 0.8),
                const SizedBox(height: 15),
                _buildSkill(context, 'UI/UX Design', 0.7),
                const SizedBox(height: 15),
                _buildSkill(context, 'React', 0.85),
                const SizedBox(height: 15),
                _buildSkill(context, 'HTML', 0.95),
                const SizedBox(height: 15),
                _buildSkill(context, 'CSS', 0.9),
                const SizedBox(height: 15),
                _buildSkill(context, 'JavaScript', 0.8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyanAccent,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const AboutMeScreen()),
                          );
                        },
                        child: const Text(
                          '<',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyanAccent,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ProjectsExperienceScreen()),
                          );
                        },
                        child: const Text(
                          '>',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSkill(BuildContext context, String skill, double percentage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skill,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        Stack(
          children: [
            Container(
              height: 8, // Reduced height for thinner line
              decoration: BoxDecoration(
                color: Colors.grey[800], // Darker grey for contrast
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              height: 8, // Reduced height for thinner line
              width: MediaQuery.of(context).size.width * percentage,
              decoration: BoxDecoration(
                color: Colors.cyanAccent, // Accent color for progress
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            '${(percentage * 100).toInt()}%',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white70,
            ),
          ),
        ),
      ],
    );
  }
}
