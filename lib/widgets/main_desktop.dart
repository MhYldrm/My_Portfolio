import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidht = screenSize.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenSize.height / 1.5,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Hi,\nI'm Muhammed YILDIRIM\na Flutter Developer",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.whitePrimary,
                  height: 1.5,
                ),),
                const SizedBox(height: 15,),
                SizedBox(
                    width: 220,
                    child: ElevatedButton(onPressed: (){

                    },style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffE3994E),
                    ), child:const Text("Get in Touch",style: TextStyle(color: Colors.white,fontSize: 17),),)),
              ],
            ),
          ),
          const Spacer(),
          Image.asset("assets/tigerr.png",width: screenWidht / 2.5,),
        ],
      ),
    );
  }
}
