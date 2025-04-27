import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader(
      {super.key,
      required this.headerTitle,
      required this.headerCount,
      required this.headerColor});
  final String headerTitle;
  final String headerCount;
  final Color headerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: headerColor,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 30,
      // width: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          children: [
            Text(
              headerTitle,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              headerCount,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
