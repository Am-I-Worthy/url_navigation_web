import 'package:flutter/material.dart';
import 'package:url_navigation_web/pages/AboutPage.dart';
import 'package:url_navigation_web/pages/HelpPage.dart';
import 'package:url_navigation_web/pages/HomePage.dart';
import 'package:url_navigation_web/pages/ProfilePage.dart';
import 'package:url_navigation_web/pages/SettingsPage.dart';

class LandingPage extends StatefulWidget {
  final String page;
  final String extra;

  const LandingPage({Key key, this.page, this.extra}) : super(key: key);
  @override
  _LandingPageState createState() => _LandingPageState();
}

List<String> pages = [
  'home',
  'about',
  'profile',
  'settings',
  'help',
];

List<IconData> icons = [
  Icons.home,
  Icons.pages_rounded,
  Icons.person_rounded,
  Icons.settings_rounded,
  Icons.help_rounded,
];

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: icons.map((e) {
                  return NavItem(
                    selected: icons.indexOf(e) == pages.indexOf(widget.page),
                    icon: e,
                    onTap: () {
                      if (icons.indexOf(e) == 1) {
                        Navigator.pushNamed(
                            context, '/main/${pages[icons.indexOf(e)]}/Scott');
                      } else {
                        Navigator.pushNamed(
                            context, '/main/${pages[icons.indexOf(e)]}');
                      }
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Center(
                child: IndexedStack(
                  index: pages.indexOf(widget.page),
                  children: [
                    Home(),
                    About(widget.extra),
                    Profile(),
                    Settings(),
                    Help(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatefulWidget {
  final IconData icon;
  final bool selected;
  final Function onTap;

  const NavItem({Key key, this.icon, @required this.selected, this.onTap})
      : super(key: key);
  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          widget.onTap();
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 375),
          width: double.infinity,
          height: 60.0,
          color: widget.selected ? Colors.black87 : Colors.white,
          child: Icon(
            widget.icon,
            color: widget.selected ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}


/// u can see the url is not working perfectly.....ryt?
/// this flutter beta is not working fine....
/// for u to see this working fine...
/// run in release mode... 
/// will show u how to do that....
/// 
/// thats it.... u can do the same... to see the perfect output... or else u can change the flutter channel to dev....
/// its working fine in dev channel.... 
/// 
/// :)