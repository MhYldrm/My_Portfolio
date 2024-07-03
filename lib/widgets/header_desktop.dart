import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap});
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      decoration: kHeaderDecoration,
      height: 60,
      width: double.maxFinite,
      child: Row(
        children: [
          Logo(onTap: (){},),
          const Spacer(),
          for(int i = 0; i <navTitles.length; i++)
            Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(onPressed: (){
                  onNavMenuTap(i);
                }, child: Text(navTitles[i],style: const TextStyle(
                    fontSize: 16,color: CustomColors.whitePrimary,fontWeight: FontWeight.bold
                ),))),
        ],
      ),
    );
  }
}
