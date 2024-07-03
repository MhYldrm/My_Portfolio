import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/projects_utils.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/colors.dart';


class ProjectsCard extends StatelessWidget {
  const ProjectsCard({
    super.key,
    required this.project
  });

  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    launch(Uri url) async {
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }
    return Container(
      height: 280,
      width: 250,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColors.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(project.image,
            height: 140,
            fit: BoxFit.cover,
            width: 250,),
           Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(project.title,style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: CustomColors.whitePrimary,
                fontSize: 15
            ),),
          ),
           Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(project.subtitle,style: const TextStyle(
              fontSize: 12,
              color: CustomColors.whitePrimary,
            ),),
          ),
          const Spacer(),
          Container(
            color: CustomColors.bgLight2,
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
            child: Row(
              children: [
                const Text("Check it out",style: TextStyle(
                  color: Color(0xffE3994E),
                  fontSize: 12,
                ),),
                const Spacer(),
                if(project.githubLink != null)
                InkWell(
                    onTap: (){
                      launch(Uri.parse(project.githubLink));
                    },
                    child: Image.asset("assets/github.png",width:23,)),
              ],
            ),
          ),
        ],
      ),
    );
  }



}
