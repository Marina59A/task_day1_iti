import 'package:application_day1_iti/widgets/custom_header.dart';
import 'package:application_day1_iti/widgets/custom_projects.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text(
            'ToDay’s Projects',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  CustomHeader(
                    headerTitle: 'All',
                    headerCount: '17',
                    headerColor: Color(0xFF0DA6C2),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CustomHeader(
                    headerTitle: 'To Do',
                    headerCount: '5',
                    headerColor: Color(0xFF7B78AA),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CustomHeader(
                    headerTitle: 'In Progress',
                    headerCount: '3',
                    headerColor: Color(0xFFFFC239),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CustomHeader(
                    headerTitle: 'Done',
                    headerCount: '9',
                    headerColor: Color(0xFFEFEFEF),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CustomProjects(
                      projectTitle: 'Create Ad Banner',
                      projectColor: Color(0xFF9327F0),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomProjects(
                      projectTitle: 'Create New Blog Post',
                      projectColor: Color(0xFFFFC239),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomProjects(
                      projectTitle: 'Online Course',
                      projectColor: Color(0xFF7B78AA),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomProjects(
                      projectTitle: 'Complete Portfolio',
                      projectColor: Color(0xFFD9D9D9),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomProjects(
                      projectTitle: 'Plan For Next Week',
                      projectColor: Color(0xFFFFC239),
                    ),
                  ],
                )),
          ],
        ));
  }
}
