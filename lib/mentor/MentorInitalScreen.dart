import 'package:flutter/material.dart';
import 'homepage/all_chats_page/all_chats_page_widget.dart';
import 'homepage/homepage/homepage_widget.dart';
import 'homepage/notifications/notifications_widget.dart';
import 'homepage/profile/profile/profile_widget.dart';


class MentorInitalScreen extends StatefulWidget {
   MentorInitalScreen({Key? key}) : super(key: key);

  @override
  State<MentorInitalScreen> createState() => _MentorInitalScreenState();
}

class _MentorInitalScreenState extends State<MentorInitalScreen> {
  int BottomNavIndex = 0;

 final List<Widget> _pages = [
    HomepageWidget(),
    AllChatsPageWidget(),
    NotificationsWidget(),
    Profile_mentor(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(    bottomNavigationBar: BottomNavigationBar(currentIndex: BottomNavIndex,
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
                      image:BottomNavIndex == 1
                          ?  AssetImage(
                          'assets/images/bottomNavIcon/msg_active.png') :   AssetImage(
                          'assets/images/bottomNavIcon/msg_unactive.png'),
                    )),
                BottomNavigationBarItem(
                    label: 'notification',
                    icon: Image(
                      image: BottomNavIndex == 2
                          ?  AssetImage(
                          'assets/images/bottomNavIcon/notification_active.png'):  AssetImage(
                          'assets/images/bottomNavIcon/notification_unactive.png'),
                    )),
                BottomNavigationBarItem(
                    label: 'myprofile',
                    icon: Image(
                      image:BottomNavIndex == 3
                          ? AssetImage(
                          'assets/images/bottomNavIcon/myprofile_active.png') : AssetImage(
                          'assets/images/bottomNavIcon/myprofile_unactive.png'),
                    )),
              ]),
              body: _pages[BottomNavIndex],
              );
  }
}