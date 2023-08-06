import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:neunetics_mentor_part/mentor/homepage/profile/booking/booking_widget.dart';
import 'package:neunetics_mentor_part/mentor/homepage/profile/edit_profile/edit_profile_widget.dart';
import 'package:neunetics_mentor_part/mentor/homepage/profile/notificationsettings/notificationsettings_widget.dart';
import 'package:neunetics_mentor_part/mentor/homepage/profile/profile/profile_widget.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';
import 'backend/firebase/firebase_config.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'flutter_flow/nav/nav.dart';
import 'index.dart';
import 'mentee/home_page/all_chats_page/all_chats_page_widget.dart';
import 'mentee/home_page/chat_page/chat_page_widget.dart';
import 'mentee/login_signup/menteelogin/menteelogin_widget.dart';
import 'mentee/login_signup/menteesignup/menteesignup_widget.dart';
import 'mentor/MentorInitalScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  await initFirebase();
  await FlutterFlowTheme.initialize();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;
  late Stream<BaseAuthUser> userStream;
  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;
  @override
  void initState() {
    super.initState();

    // userStream = neuneticsFirebaseUserStream()
    //   ..listen((user) => _appStateNotifier.update(user));
    jwtTokenStream.listen((_) {});
    Future.delayed(
      Duration(seconds: 1),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        routes: {
          '/': (context) => MentorInitalScreen(),
          'loginas': (context) => LoginasWidget(),
          'Mentorlogin': (context) => MentorloginWidget(),
          'homepage': (context) => HomepageWidget(),
          'About': (context) => AboutWidget(),
          'Aboutus': (context) => AboutusWidget(),
          'EditProfile': (context) => EditProfileWidget_mentor(),
          'Booking': (context) => BookingWidget_mentor(),
          'Achievement': (context) => AchievementWidget(),
          'changepassword': (context) => ChangepasswordWidget(),
          'switchacc': (context) => SwitchaccWidget(),
          'notificationsettings': (context) => Notificationsettings_mentor(),
          'Privacypolicy': (context) => PrivacypolicyWidget(),
          'addachivement': (context) => AddachivementWidget(),
          'forgotpaswrd': (context) => ForgotpaswrdWidget(),
          'mentee_homepage': (context) => MenteeHomepageWidget(),
          'MentorProfile': (context) => MentorProfileWidget(),
          'SendRequest': (context) => SendRequestWidget(),
          'Mentee_notifications': (context) => MenteeNotificationsWidget(),
          'mentee_booking': (context) => MenteeBookingWidget(),
          'Menteelogin': (context) => MenteeloginWidget(),
          'Menteesignup': (context) => MenteesignupWidget(),
          'Mentee_switchacc': (context) => MenteeSwitchaccWidget(),
          'Mentee_Profile': (context) => MenteeProfileWidget(),
          'PrivacypolicyCopy': (context) => PrivacypolicyCopyWidget(),
          'Mentee_notificationsettings': (context) =>
              MenteeNotificationsettingsWidget(),
          'MenteeEditProfile': (context) => MenteeEditProfileWidget(),
          'MenteeAboutus': (context) => MenteeAboutusWidget(),
          'MenteeAchievementCopy': (context) => MenteeAchievementCopyWidget(),
          'Menteeaddachivement': (context) => MenteeaddachivementWidget(),
          'Pricing': (context) => PricingWidget(),
          'Mentee_changepassword': (context) => MenteeChangepasswordWidget(),
          'AllMentors': (context) => AllMentorsWidget(),
          'Mentor_allchats': (context) => AllChatsPageWidget(),
          'ChatPageWidget':(context) => ChatPageWidget()
        },
     
      ),
    );
  }
}



class NavBarPage extends StatefulWidget {
  NavBarPage({Key? key, this.initialPage, this.page}) : super(key: key);

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'homepage';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'homepage': HomepageWidget(),
      'notifications': NotificationsWidget(),
      'Profile': Profile_mentor(),
      'Mentee_Profile': MenteeProfileWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        }),
        backgroundColor: Colors.white,
        selectedItemColor: FlutterFlowTheme.of(context).primary,
        unselectedItemColor: Color(0x8A000000),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.home,
              size: 24.0,
            ),
            label: 'Home',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_active,
              size: 24.0,
            ),
            label: 'Home',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 24.0,
            ),
            label: 'Home',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 24.0,
            ),
            label: 'Home',
            tooltip: '',
          )
        ],
      ),
    );
  }
}
