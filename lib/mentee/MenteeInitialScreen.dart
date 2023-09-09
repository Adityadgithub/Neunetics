import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'home_page/all_chats_page/all_chats_page_widget.dart';
import 'home_page/mentee_homepage/mentee_homepage_widget.dart';
import 'home_page/mentee_notifications/mentee_notifications_widget.dart';
import 'home_page/profile/mentee_profile/mentee_profile_widget.dart';


class MenteeInitialScreen extends StatefulWidget {
  const MenteeInitialScreen({Key? key}) : super(key: key);

  @override
  _MenteeInitialScreenState createState() => _MenteeInitialScreenState();
}

class _MenteeInitialScreenState extends State<MenteeInitialScreen>
    with TickerProviderStateMixin {
  late MenteeInitialScreen _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(30, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(30, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(30, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(30, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  int BottomNavIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


 final List<Widget> _pages = [
MenteeHomepageWidget(),
AllChatsPage_mentee(),
MenteeNotificationsWidget(),
MenteeProfileWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: BottomNavIndex,
            onTap: (index) {
              setState(() {
                BottomNavIndex = index;
              });
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  label: 'home',
                  icon: Image(
                    image: BottomNavIndex == 0
                        ? AssetImage(
                            'assets/images/bottomNavIcon/Home_active.png')
                        : AssetImage(
                            'assets/images/bottomNavIcon/Home_unactive.png'),
                  )),
              BottomNavigationBarItem(
                  label: 'chat',
                  icon: Image(
                    image: BottomNavIndex == 1
                        ? AssetImage(
                            'assets/images/bottomNavIcon/msg_active.png')
                        : AssetImage(
                            'assets/images/bottomNavIcon/msg_unactive.png'),
                  )),
              BottomNavigationBarItem(
                  label: 'notification',
                  icon: Image(
                    image: BottomNavIndex == 2
                        ? AssetImage(
                            'assets/images/bottomNavIcon/notification_active.png')
                        : AssetImage(
                            'assets/images/bottomNavIcon/notification_unactive.png'),
                  )),
              BottomNavigationBarItem(
                  label: 'myprofile',
                  icon: Image(
                    image: BottomNavIndex == 3
                        ? AssetImage(
                            'assets/images/bottomNavIcon/myprofile_active.png')
                        : AssetImage(
                            'assets/images/bottomNavIcon/myprofile_unactive.png'),
                  )),
            ]),
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F5F8),
       body: _pages[BottomNavIndex],
      ),
    );
  }
}
