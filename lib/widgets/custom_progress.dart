import 'package:flutter/material.dart';

class CustomProgress extends StatelessWidget {
  const CustomProgress(
      {super.key,
      required this.progressTitle,
      required this.progressSubtitle,
      required this.progressDate, required this.progressNumber});
  final String progressTitle;
  final String progressSubtitle;
  final String progressDate;
  final String progressNumber ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 103,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  progressTitle,
                  style: const TextStyle(
                    color: Color(0xFF828282),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                 const SizedBox(
                  height: 5,
                ),
                Text(
                  progressSubtitle,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  progressDate,
                  style: const TextStyle(
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF828282),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 60,
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: const Color(0xFFD9D9D9),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25,
              child: Text(
                progressNumber,
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF4C91FF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
