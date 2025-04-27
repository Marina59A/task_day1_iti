import 'package:flutter/material.dart';

class CustomProjects extends StatelessWidget {
  const CustomProjects(
      {super.key, required this.projectTitle, required this.projectColor});
  final String projectTitle;
  final Color projectColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFEFEFEF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: projectColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  projectTitle,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      weight: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '2 hours ago',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          const Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('lib/assets/images/Ellipse252.png'),
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('lib/assets/images/Ellipse253.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
