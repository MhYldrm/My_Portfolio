import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_item.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: [
              for(int i = 0; i<platformItems.length; i++)
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                    color: CustomColors.bgLight2,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    leading: Image.asset(platformItems[i]["img"],width: 26,color: CustomColors.yellowPrimary,),
                    title: Text(platformItems[i]["title"]),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: 50,),
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for(int i = 0; i< skillsItems.length; i++)
                  Chip(
                    backgroundColor: CustomColors.bgLight2,
                    label: Text(skillsItems[i]["title"],style:const TextStyle(fontSize: 12),),avatar: Image.asset(skillsItems[i]["img"],width: 26,),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
