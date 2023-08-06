import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'homepage_model.dart';
import 'models/UpScheduleCards.dart';
import 'models/todayscard.dart';
export 'homepage_model.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({Key? key}) : super(key: key);

  @override
  _HomepageWidgetState createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget>
    with TickerProviderStateMixin {
  late HomepageModel _model;

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
  };


  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageModel());

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
      child: SafeArea(
        child: Scaffold(
         
          key: scaffoldKey,
          backgroundColor: Color(0xFFF1F5F8),
          body:  SingleChildScrollView(
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
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
                // Padding(
                //   padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                //   child: Container(
                //     width: double.infinity,
                //     height: 50,
                //     decoration: BoxDecoration(
                //       color: Color(0xFFE9F6EE),
                //       boxShadow: [
                //         BoxShadow(
                //           blurRadius: 4,
                //           color: Color(0x34090F13),
                //           offset: Offset(0, 2),
                //         )
                //       ],
                //       borderRadius: BorderRadius.circular(5),
                //       border: Border.all(
                //         color: Color(0xFF6DC38D),
                //       ),
                //     ),
                //     child: Padding(
                //       padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                //       child: TextFormField(
                //         controller: _model.textController,
                //         obscureText: false,
                //         decoration: InputDecoration(
                //           labelText: 'Search...',
                //           labelStyle:
                //               FlutterFlowTheme.of(context).labelLarge.override(
                //                     fontFamily: 'Plus Jakarta Sans',
                //                     color: Color(0xFF57636C),
                //                     fontSize: 16,
                //                     fontWeight: FontWeight.w500,
                //                   ),
                //           enabledBorder: InputBorder.none,
                //           focusedBorder: InputBorder.none,
                //           errorBorder: InputBorder.none,
                //           focusedErrorBorder: InputBorder.none,
                //           contentPadding:
                //               EdgeInsetsDirectional.fromSTEB(0, 12, 12, 12),
                //         ),
                //         style: FlutterFlowTheme.of(context).bodyLarge.override(
                //               fontFamily: 'Plus Jakarta Sans',
                //               color: Color(0xFF0F1113),
                //               fontSize: 16,
                //               fontWeight: FontWeight.w500,
                //             ),
                //         validator:
                //             _model.textControllerValidator.asValidator(context),
                //       ),
                //     ),
                //   ),
                // ),
                
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                  child: Text(
                    'Todays Schedule',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Unbounded',
                          color: Color(0xFF55B979),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 315,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F5F8),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      TodaysCard(),
                      TodaysCard(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                  child: Text(
                    'Upcoming Schedule',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Unbounded',
                          color: Color(0xFF55B979),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    UpScheduleCards(),
                    UpScheduleCards(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
