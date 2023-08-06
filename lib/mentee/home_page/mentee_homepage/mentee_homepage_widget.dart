import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'mentee_homepage_model.dart';
import 'models/TopMentors.dart';
export 'mentee_homepage_model.dart';

class MenteeHomepageWidget extends StatefulWidget {
  const MenteeHomepageWidget({Key? key}) : super(key: key);

  @override
  _MenteeHomepageWidgetState createState() => _MenteeHomepageWidgetState();
}

class _MenteeHomepageWidgetState extends State<MenteeHomepageWidget>
    with TickerProviderStateMixin {
  late MenteeHomepageModel _model;

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
    _model = createModel(context, () => MenteeHomepageModel());

    _model.textController ??= TextEditingController();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
         bottomNavigationBar: BottomNavigationBar(currentIndex: BottomNavIndex,
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
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F5F8),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                  child: Container(
                    width: 100,
                    height: 100,
                    constraints: BoxConstraints(
                      minWidth: double.infinity,
                      maxWidth: double.infinity,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFFBE6BE),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 40, 16, 12),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFF827AE1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1573496799652-408c2ac9fe98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                  width: 40,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Max Rosco',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF0F1113),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                  child: Text(
                                    'There are 40 mentees on Neunetics!',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF57636C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFE9F6EE),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x34090F13),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Color(0xFF6DC38D),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: TextFormField(
                      controller: _model.textController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Search  Mentor...',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelLarge.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF8C979A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: Color(0xFF0F1113),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xFFF1F5F8),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(
                            color: Color(0xFF8C979A),
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            'All Type',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(
                            color: Color(0xFF8C979A),
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            'Designer',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(
                            color: Color(0xFF8C979A),
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            'UI/UX',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(
                            color: Color(0xFF8C979A),
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            'Tester',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Highest rated mentors',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Unbounded',
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.apiResultsm6 = await BrowseMentorsCall.call();
                        if ((_model.apiResultsm6?.succeeded ?? true)) {
                          context.pushNamed('AllMentors');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Something went wrong',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        }

                        setState(() {});
                      },
                      child: Text(
                        'View all',
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Unbounded',
                                  color: Color(0xFF55B979),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 260,
                decoration: BoxDecoration(
                  color: Color(0xFFF1F5F8),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                  TopMentors(),
                  TopMentors(),
                  ],
                ),
              ),
              // Padding(
              //   padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
              //   child: Row(
              //     mainAxisSize: MainAxisSize.max,
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Text(
              //         'View Intership',
              //         style: FlutterFlowTheme.of(context).bodyMedium.override(
              //               fontFamily: 'Unbounded',
              //               fontSize: 17,
              //               fontWeight: FontWeight.bold,
              //               useGoogleFonts: false,
              //             ),
              //       ),
              //       Text(
              //         'Coming Soon',
              //         style:
              //             FlutterFlowTheme.of(context).headlineSmall.override(
              //                   fontFamily: 'Unbounded',
              //                   color: Color(0xFF55B979),
              //                   fontSize: 15,
              //                   fontWeight: FontWeight.w600,
              //                   useGoogleFonts: false,
              //                 ),
              //       ),
              //     ],
              //   ),
              // ),
              // ListView(
              //   padding: EdgeInsets.zero,
              //   shrinkWrap: true,
              //   scrollDirection: Axis.vertical,
              //   children: [
              //     Padding(
              //       padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //       child: Container(
              //         width: double.infinity,
              //         decoration: BoxDecoration(
              //           color: Color(0xFFDDFAEA),
              //           borderRadius: BorderRadius.circular(5),
              //         ),
              //         child: Padding(
              //           padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //           child: Row(
              //             mainAxisSize: MainAxisSize.max,
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Padding(
              //                 padding:
              //                     EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
              //                 child: ClipRRect(
              //                   borderRadius: BorderRadius.circular(0),
              //                   child: Image.network(
              //                     'data:image/png;base64,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',
              //                     width: 40,
              //                     height: 40,
              //                     fit: BoxFit.cover,
              //                   ),
              //                 ),
              //               ),
              //               Padding(
              //                 padding:
              //                     EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              //                 child: Column(
              //                   mainAxisSize: MainAxisSize.max,
              //                   mainAxisAlignment:
              //                       MainAxisAlignment.spaceBetween,
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text(
              //                       'Internship Ltd',
              //                       style: FlutterFlowTheme.of(context)
              //                           .bodyMedium
              //                           .override(
              //                             fontFamily: 'Unbounded',
              //                             fontSize: 18,
              //                             fontWeight: FontWeight.bold,
              //                             useGoogleFonts: false,
              //                           ),
              //                     ),
              //                     Padding(
              //                       padding: EdgeInsetsDirectional.fromSTEB(
              //                           0, 3, 0, 0),
              //                       child: Text(
              //                         'Internship Ltd',
              //                         style: FlutterFlowTheme.of(context)
              //                             .bodyMedium
              //                             .override(
              //                               fontFamily: 'Unbounded',
              //                               fontSize: 16,
              //                               fontWeight: FontWeight.w600,
              //                               useGoogleFonts: false,
              //                             ),
              //                       ),
              //                     ),
              //                     Container(
              //                       width: 275,
              //                       decoration: BoxDecoration(),
              //                       child: Padding(
              //                         padding: EdgeInsetsDirectional.fromSTEB(
              //                             0, 10, 0, 0),
              //                         child: Text(
              //                           'A UI/UX Designer is responsible for creating websites that not only look great, but also provide an intuitive user experience.',
              //                           style: FlutterFlowTheme.of(context)
              //                               .bodyMedium
              //                               .override(
              //                                 fontFamily: 'Readex Pro',
              //                                 color: Color(0xFF5D5D5D),
              //                               ),
              //                         ),
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //       child: Container(
              //         width: double.infinity,
              //         decoration: BoxDecoration(
              //           color: Color(0xFFC6FEDD),
              //           borderRadius: BorderRadius.circular(5),
              //         ),
              //         child: Padding(
              //           padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //           child: Row(
              //             mainAxisSize: MainAxisSize.max,
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Card(
              //                 clipBehavior: Clip.antiAliasWithSaveLayer,
              //                 color: Color(0xFF827AE1),
              //                 shape: RoundedRectangleBorder(
              //                   borderRadius: BorderRadius.circular(40),
              //                 ),
              //                 child: Padding(
              //                   padding:
              //                       EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
              //                   child: ClipRRect(
              //                     borderRadius: BorderRadius.circular(40),
              //                     child: Image.network(
              //                       'data:image/png;base64,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',
              //                       width: 40,
              //                       height: 40,
              //                       fit: BoxFit.cover,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //               Padding(
              //                 padding:
              //                     EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              //                 child: Column(
              //                   mainAxisSize: MainAxisSize.max,
              //                   mainAxisAlignment:
              //                       MainAxisAlignment.spaceBetween,
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text(
              //                       'Internship Ltd',
              //                       style: FlutterFlowTheme.of(context)
              //                           .bodyMedium
              //                           .override(
              //                             fontFamily: 'Unbounded',
              //                             fontSize: 18,
              //                             fontWeight: FontWeight.bold,
              //                             useGoogleFonts: false,
              //                           ),
              //                     ),
              //                     Container(
              //                       width: 275,
              //                       decoration: BoxDecoration(),
              //                       child: Padding(
              //                         padding: EdgeInsetsDirectional.fromSTEB(
              //                             0, 10, 0, 0),
              //                         child: Text(
              //                           'A UI/UX Designer is responsible for creating websites that not only look great, but also provide an intuitive user experience.',
              //                           style: FlutterFlowTheme.of(context)
              //                               .bodyMedium
              //                               .override(
              //                                 fontFamily: 'Readex Pro',
              //                                 color: Color(0xFF5D5D5D),
              //                               ),
              //                         ),
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //       child: Container(
              //         width: double.infinity,
              //         decoration: BoxDecoration(
              //           color: Color(0xFFC6FEDD),
              //           borderRadius: BorderRadius.circular(5),
              //         ),
              //         child: Padding(
              //           padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //           child: Row(
              //             mainAxisSize: MainAxisSize.max,
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Card(
              //                 clipBehavior: Clip.antiAliasWithSaveLayer,
              //                 color: Color(0xFF827AE1),
              //                 shape: RoundedRectangleBorder(
              //                   borderRadius: BorderRadius.circular(40),
              //                 ),
              //                 child: Padding(
              //                   padding:
              //                       EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
              //                   child: ClipRRect(
              //                     borderRadius: BorderRadius.circular(40),
              //                     child: Image.network(
              //                       'data:image/png;base64,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',
              //                       width: 40,
              //                       height: 40,
              //                       fit: BoxFit.cover,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //               Padding(
              //                 padding:
              //                     EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              //                 child: Column(
              //                   mainAxisSize: MainAxisSize.max,
              //                   mainAxisAlignment:
              //                       MainAxisAlignment.spaceBetween,
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text(
              //                       'Internship Ltd',
              //                       style: FlutterFlowTheme.of(context)
              //                           .bodyMedium
              //                           .override(
              //                             fontFamily: 'Unbounded',
              //                             fontSize: 18,
              //                             fontWeight: FontWeight.bold,
              //                             useGoogleFonts: false,
              //                           ),
              //                     ),
              //                     Container(
              //                       width: 275,
              //                       decoration: BoxDecoration(),
              //                       child: Padding(
              //                         padding: EdgeInsetsDirectional.fromSTEB(
              //                             0, 10, 0, 0),
              //                         child: Text(
              //                           'A UI/UX Designer is responsible for creating websites that not only look great, but also provide an intuitive user experience.',
              //                           style: FlutterFlowTheme.of(context)
              //                               .bodyMedium
              //                               .override(
              //                                 fontFamily: 'Readex Pro',
              //                                 color: Color(0xFF5D5D5D),
              //                               ),
              //                         ),
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
          
            ],
          ),
        ),
      ),
    );
  }
}
