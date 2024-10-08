import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key, required this.onNavItemTab});
  final Function(int) onNavItemTab;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColors.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
              child: IconButton(onPressed: (){
                Navigator.of(context).pop();
              }, icon: const Icon(Icons.close)),
            ),
          ),
          for(int i = 0; i<navIcons.length; i++)
            ListTile(
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
              onTap: (){
                onNavItemTab(i);
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle: const TextStyle(color: CustomColors.whitePrimary,fontWeight: FontWeight.w600,fontSize: 16),
            ),
        ],
      ),
    );
  }
}
