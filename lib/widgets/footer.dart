import 'package:flutter/material.dart';
import '../constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text("@Made by Muhammed Yıldırım with Flutter",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 10,
          color: CustomColors.whitePrimary,
        ),
      ),
    );
  }
}
