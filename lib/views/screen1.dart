import 'package:application_day1_iti/widgets/custom_container.dart';
import 'package:application_day1_iti/widgets/custom_progress.dart';
import 'package:application_day1_iti/widgets/custom_row.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // SafeArea( child:
        Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Marina!',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              'Welcome Back',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.notifications_active,
            size: 30,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xFF0DA6C2),
              ),
              width: 350,
              height: 132,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Today',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '2/10 Tasks',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 75,
                  ),
                  Image.asset('lib/assets/images/img1.png')
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Column(
              children: [
                CustomRow(textTitle: 'To Do', number: '3'),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomContainer(
                          title: 'Project',
                          subtitle: 'Redesign Homescreen',
                          date: '25th october 2029'),
                      SizedBox(
                        width: 20,
                      ),
                      CustomContainer(
                          title: 'Practise',
                          subtitle: 'Ux Reserch Sample',
                          date: '17th July 2029'),
                      SizedBox(
                        width: 20,
                      ),
                      CustomContainer(
                          title: 'Duplicate',
                          subtitle: 'Blog Post Design',
                          date: '21th october 2029')
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CustomRow(textTitle: 'In progress', number: '3'),
                SizedBox(
                  height: 20,
                ),
                CustomProgress(
                    progressTitle: 'Tommy max’s Project',
                    progressSubtitle: 'Create Ad Banner',
                    progressDate: '2 hours ago',
                    progressNumber: '70%'),
                SizedBox(
                  height: 20,
                ),
                CustomProgress(
                    progressTitle: 'Personal Work',
                    progressSubtitle: 'Create New Blog Post',
                    progressDate: '2 hours ago',
                    progressNumber: '45%'),
              ],
            ),
          )
        ],
      ),
      // ),
    );
  }
}
