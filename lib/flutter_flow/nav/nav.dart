import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neunetics_mentee_part/mentor/homepage/profile/booking/booking_widget.dart';
import 'package:neunetics_mentee_part/mentor/homepage/profile/edit_profile/edit_profile_widget.dart';
import 'package:neunetics_mentee_part/mentor/homepage/profile/notificationsettings/notificationsettings_widget.dart';
import 'package:page_transition/page_transition.dart';
import '../../mentee/home_page/all_chats_page/all_chats_page_widget.dart';
import '../../mentee/home_page/chat_page/chat_page_widget.dart';
import '../../mentee/login_signup/menteelogin/menteelogin_widget.dart';
import '../../mentee/login_signup/menteesignup/menteesignup_widget.dart';
import '../../mentor/homepage/about/about_widget.dart';
import '../../mentor/homepage/all_chats_page/all_chats_page_widget.dart';
import '../flutter_flow_theme.dart';
import '/backend/backend.dart';

import '../../auth/base_auth_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : LoginasWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : LoginasWidget(),
        ),
        FFRoute(
          name: 'loginas',
          path: '/loginas',
          builder: (context, params) => LoginasWidget(),
        ),
        FFRoute(
          name: 'Mentorlogin',
          path: '/mentorlogin',
          builder: (context, params) => MentorloginWidget(),
        ),
        FFRoute(
          name: 'homepage',
          path: '/homepage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'homepage')
              : HomepageWidget(),
        ),
        FFRoute(
          name: 'notifications',
          path: '/notifications',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'notifications')
              : NotificationsWidget(),
        ),
        FFRoute(
          name: 'About',
          path: '/about',
          builder: (context, params) => MenteeRequest()
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Profile')
              : MenteeProfileWidget(),
        ),
        FFRoute(
          name: 'Aboutus',
          path: '/aboutus',
          builder: (context, params) => AboutusWidget(),
        ),
        FFRoute(
          name: 'EditProfile',
          path: '/editProfile',
          builder: (context, params) => EditProfileWidget_mentor(),
        ),
        FFRoute(
          name: 'Booking',
          path: '/booking',
          builder: (context, params) => BookingWidget_mentor(),
        ),
        FFRoute(
          name: 'Achievement',
          path: '/achievement',
          builder: (context, params) => AchievementWidget(),
        ),
        FFRoute(
          name: 'changepassword',
          path: '/changepassword',
          builder: (context, params) => ChangepasswordWidget(),
        ),
        FFRoute(
          name: 'switchacc',
          path: '/switchacc',
          builder: (context, params) => SwitchaccWidget(),
        ),
        FFRoute(
          name: 'notificationsettings',
          path: '/notificationsettings',
          builder: (context, params) => Notificationsettings_mentor(),
        ),
        FFRoute(
          name: 'Privacypolicy',
          path: '/privacypolicy',
          builder: (context, params) => PrivacypolicyWidget(),
        ),
        FFRoute(
          name: 'addachivement',
          path: '/addachivement',
          builder: (context, params) => AddachivementWidget(),
        ),
        FFRoute(
          name: 'forgotpaswrd',
          path: '/forgotpaswrd',
          builder: (context, params) => ForgotpaswrdWidget(),
        ),
        FFRoute(
          name: 'mentee_homepage',
          path: '/menteeHomepage',
          builder: (context, params) => MenteeHomepageWidget(),
        ),
        FFRoute(
          name: 'MentorProfile',
          path: '/mentorProfile',
          builder: (context, params) => MentorProfileWidget(),
        ),
        FFRoute(
          name: 'SendRequest',
          path: '/sendRequest',
          builder: (context, params) => SendRequestWidget(),
        ),
        FFRoute(
          name: 'Mentee_notifications',
          path: '/menteeNotifications',
          builder: (context, params) => MenteeNotificationsWidget(),
        ),
        FFRoute(
          name: 'mentee_booking',
          path: '/menteeBooking',
          builder: (context, params) => MenteeBookingWidget(),
        ),
        FFRoute(
          name: 'Menteelogin',
          path: '/menteelogin',
          builder: (context, params) => MenteeloginWidget(),
        ),
        FFRoute(
          name: 'Menteesignup',
          path: '/menteesignup',
          builder: (context, params) => MenteesignupWidget(),
        ),
        FFRoute(
          name: 'Mentee_switchacc',
          path: '/menteeSwitchacc',
          builder: (context, params) => MenteeSwitchaccWidget(),
        ),
        FFRoute(
          name: 'Mentee_Profile',
          path: '/menteeProfile',
          builder: (context, params) => MenteeProfileWidget(),
        ),
       
        FFRoute(
          name: 'Mentee_notificationsettings',
          path: '/menteeNotificationsettings',
          builder: (context, params) => MenteeNotificationsettingsWidget(),
        ),
        FFRoute(
          name: 'MenteeEditProfile',
          path: '/menteeEditProfile',
          builder: (context, params) => MenteeEditProfileWidget(),
        ),
        FFRoute(
          name: 'MenteeAboutus',
          path: '/menteeAboutus',
          builder: (context, params) => MenteeAboutusWidget(),
        ),
        FFRoute(
          name: 'MenteeAchievementCopy',
          path: '/menteeAchievementCopy',
          builder: (context, params) => MenteeAchievementCopyWidget(),
        ),
        FFRoute(
          name: 'Menteeaddachivement',
          path: '/menteeaddachivement',
          builder: (context, params) => MenteeaddachivementWidget(),
        ),
        FFRoute(
          name: 'Pricing',
          path: '/pricing',
          builder: (context, params) => PricingWidget(),
        ),
        FFRoute(
          name: 'Mentee_changepassword',
          path: '/menteeChangepassword',
          builder: (context, params) => MenteeChangepasswordWidget(),
        ),
        FFRoute(
          name: 'AllMentors',
          path: '/allMentors',
          builder: (context, params) => AllMentorsWidget(),
        ),
        FFRoute(
          name: 'ChatPage',
          path: '/chatPage',
          asyncParams: {
            'chatUser': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => ChatPageWidget(
            chatUser: params.getParam('chatUser', ParamType.Document),
            chatRef: params.getParam(
                'chatRef', ParamType.DocumentReference, false, ['chats']),
          ),
        ),
        FFRoute(
          name: 'AllChatsPage',
          path: '/allChatsPage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'AllChatsPage')
              : AllChatsPageWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/menteeHomepage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
