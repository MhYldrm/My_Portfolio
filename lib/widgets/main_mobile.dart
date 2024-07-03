import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidht = screenSize.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 120),
      height: screenSize.height,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
              shaderCallback: (bounds){
                return LinearGradient(colors: [
                  CustomColors.scaffoldBg.withOpacity(0.6),
                  CustomColors.scaffoldBg.withOpacity(0.6),
                ]).createShader(bounds);},
              blendMode: BlendMode.srcATop,
              child: Image.asset("assets/tigerr.png",width: screenWidht/1.7,)),
          const Text("Hi,\nI'm Muhammed YILDIRIM\na Flutter Developer",style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: CustomColors.whitePrimary,
            height: 1.5,
          ),),
          const SizedBox(height: 15,),
          SizedBox(
              width: 180,
              child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffE3994E),
              ), child:const Text("Get in Touch",style: TextStyle(color: Colors.white,fontSize: 15),),)),
        ],
      ),
    );
  }
}
