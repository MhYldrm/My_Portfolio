import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/contact_section.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/footer.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/projects_section.dart';
import 'package:my_portfolio/widgets/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidht = screenSize.width;
    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColors.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidht ? null : DrawerMobile(onNavItemTab: (int navIndeks){
            scaffoldKey.currentState?.closeEndDrawer();
            scrollToSec(navIndeks);
          },),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navBarKeys.first),
                // MAİN
                if(constraints.maxWidth >= kMinDesktopWidht)
                  HeaderDesktop(onNavMenuTap: (int navIndeks){
                    scrollToSec(navIndeks);
                  })
                else
                HeaderMobile(
                  onLogoTap: (){},
                  onMenuTap: (){scaffoldKey.currentState?.openEndDrawer();},
                ),
                if(constraints.maxWidth >= kMinDesktopWidht)
                const MainDesktop()
                else const MainMobile(),

                // Skills
                Container(
                  key: navBarKeys[1],
                  width: screenWidht,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 60),
                  color: CustomColors.bgLight1,
                  child:  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 10,),
                      const Text("What Can I Do ?",style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.whitePrimary,
                      ),),
                      const SizedBox(height: 50,),
                      //platform and skills
                      if(constraints.maxWidth >= kMinDesktopWidht)
                      const SkillsDesktop()
                      else
                      const SkillsMobile(),
                    ],
                  ),
                ),
                // Projects
                ProjectsSec(key: navBarKeys[2],),
                // Contact
                ContactSec(key: navBarKeys[3],),
                // Footer
                const Footer(),
              ],
            ),
          ),
        );
      }
    );
  }

  void scrollToSec (int navIndeks){
    if(navIndeks == 4){
      return;
    }
    final key = navBarKeys[navIndeks];
    Scrollable.ensureVisible(key.currentContext!,duration: const Duration(milliseconds: 500),curve: Curves.easeInOut);
  }

}
