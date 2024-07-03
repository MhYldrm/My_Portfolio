import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/projects_card.dart';

import '../constants/colors.dart';
import '../utils/projects_utils.dart';

class ProjectsSec extends StatelessWidget {
  const ProjectsSec({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 60),
      width: screenWidht,
      child: Column(
        children: [
          const Text("Projects",style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: CustomColors.whitePrimary,
          ),),
          const SizedBox(height: 40,),
          Wrap(
            spacing: 25,
            runSpacing: 25,
            children: [
              for(int i = 0; i < projects.length; i++)
                ProjectsCard(project: projects[i]),
            ],
          ),
        ],
      ),
    );
  }
}
