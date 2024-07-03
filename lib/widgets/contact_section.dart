import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/links.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';
import 'custom_textfield.dart';

class ContactSec extends StatelessWidget {
  const ContactSec({super.key});

  @override
  Widget build(BuildContext context) {


    launch(Uri url) async {
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColors.bgLight2,
      child: Column(
        children: [
          const Text("Get in Touch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: CustomColors.whitePrimary),),
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700,maxHeight: 100),
            child: LayoutBuilder(
                builder: (context, constrains){
                  if(constrains.maxWidth >= kMinDesktopWidht){
                    return buildNameEmailTextFieldDesktop();
                  }else{
                    return buildNameEmailTextFieldMobile();
                  }
                }
            ),
          ),
          const SizedBox(height: 15,),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: const CustomTextField(
              hintText: "Your message",
              maxLines: 16,),
          ),
          const SizedBox(height: 20,),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffE3994E),
                ), child: const Text("Get in Touch",style: TextStyle(color: Colors.white,fontSize: 15)))),
          ),
          const SizedBox(height: 30),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: const Divider()),
          const SizedBox(height: 15),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  launch(Uri.parse(MyLinks.linkedin));
                },
                child: Image.asset("assets/linkedin.png",width: 28,),
              ),
              InkWell(
                onTap: (){
                  launch(Uri.parse(MyLinks.instagram));
                },
                child: Image.asset("assets/instagram.png",width: 28),
              ),
              InkWell(
                onTap: (){
                  launch(Uri.parse(MyLinks.github));
                },
                child: Image.asset("assets/github.png",width: 28),
              ),
              InkWell(
                onTap: (){
                  launch(Uri.parse(MyLinks.medium));
                },
                child: Image.asset("assets/medium.png",width: 28,color: CustomColors.yellowSecondary),
              ),
              InkWell(
                onTap: (){
                  launch(Uri.parse(MyLinks.coffee));
                },
                child: Image.asset("assets/coffee.png",width: 100),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildNameEmailTextFieldDesktop (){
    return const Row(
      children: [
        Flexible(
            child: CustomTextField(
              hintText: "Your name",)),
        SizedBox(width: 15,),
        Flexible(
            child: CustomTextField(
              hintText: "Your e-mail",)),
      ],
    );
  }

  Column buildNameEmailTextFieldMobile (){
    return const Column(
      children: [
        Flexible(
            child: CustomTextField(
              hintText: "Your name",)),
        SizedBox(height: 15,),
        Flexible(
            child: CustomTextField(
              hintText: "Your e-mail",)),
      ],
    );
  }
}
