import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 30,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          buildCourseCard(
            color: const Color(0xFF61DE70),
            avatars: [
              'lib/assets/images/Ellipse252.png',
              'lib/assets/images/Ellipse253.png',
            ],
            tasksInfo: '13/13 Tasks - 100%',
            title: 'VR Course',
            imageUrl: 'lib/assets/images/img2.png',
          ),
          buildCourseCard(
            color: const Color(0xFF19173d),
            avatars: [
              'lib/assets/images/Ellipse252.png',
              'lib/assets/images/Ellipse253.png',
              'lib/assets/images/Ellipse257.png',
              'lib/assets/images/Ellipse261.png',
            ],
            tasksInfo: '2/8 Tasks - 35%',
            title: 'Community',
            imageUrl: 'lib/assets/images/img3.png',
          ),
          buildCourseCard(
            color: const Color(0xFF9327f0),
            avatars: [
              'lib/assets/images/Ellipse252.png',
              'lib/assets/images/Ellipse253.png',
              'lib/assets/images/Ellipse257.png',
            ],
            tasksInfo: '4/7 Tasks - 57%',
            title: 'SMM Course',
            imageUrl: 'lib/assets/images/Refer_a_friend.png',
          ),
        ],
      ),
    );
  }
}

Widget buildCourseCard({
  required Color color,
  required List<String> avatars,
  required String tasksInfo,
  required String title,
  required String imageUrl,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    padding: const EdgeInsets.all(16),
    height: 200,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(33),
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAvatars(avatars),
              const SizedBox(height: 40),
              Text(
                tasksInfo,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 5),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Image.asset(
          imageUrl,
          width: 140,
          // height: 80,
          // fit: BoxFit.cover,
        ),
      ],
    ),
  );
}

Widget buildAvatars(List<String> avatars) {
  return SizedBox(
    height: 35,
    child: Stack(
      children: List.generate(avatars.length, (index) {
        return Positioned(
          left: index * 19,
          child: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(avatars[index]),
          ),
        );
      }),
    ),
  );
}
