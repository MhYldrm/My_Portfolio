import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Logo extends StatelessWidget {
  const Logo({super.key,this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: const Text("MY",style: TextStyle(
            fontSize: 22,fontWeight: FontWeight.w500,decoration: TextDecoration.underline,color: CustomColors.yellowPrimary),));
  }
}
