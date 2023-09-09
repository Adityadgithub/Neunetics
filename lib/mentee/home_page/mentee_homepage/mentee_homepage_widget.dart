import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
                      'Top rated mentors',
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
                          Navigator.pushNamed(context,'AllMentors');
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

//  Container(
//               decoration: BoxDecoration(
//                 color: Color(0xFFF1F5F8),
//               ),
//               child: FutureBuilder<ApiCallResponse>(
//                 future: GetFeaturedMentorsCall.call(),
//                 builder: (context, snapshot) {
//                   // Customize what your widget looks like when it's loading.
//                   if (!snapshot.hasData) {
//                     return Center(
//                       child: SizedBox(
//                         width: 50,
//                         height: 50,
//                         child: CircularProgressIndicator(
//                           valueColor: AlwaysStoppedAnimation<Color>(
//                             FlutterFlowTheme.of(context).primary,
//                           ),
//                         ),
//                       ),
//                     );
//                   }
//                   final listViewGetFeaturedMentorsResponse = snapshot.data;
//                   // print('object:${listViewGetFeaturedMentorsResponse.response!.body}.');
//                   final featuredmetorlist =
//                       listViewGetFeaturedMentorsResponse!
//                               .jsonBody['featuredMentors'] ??
//                           [];
//                   print(featuredmetorlist.length);

//                   if (snapshot.hasData && featuredmetorlist.length > 0) {
//                     return ListView.builder(
//                       padding: EdgeInsets.zero,
//                       primary: false,
//                       // shrinkWrap: true,
//                       // scrollDirection: Axis.horizontal,
//                       itemCount: 2,
//                       itemBuilder: (context, featuredmetorlistIndex) {
//                         final featuredmetorlistItem =
//                             featuredmetorlist[featuredmetorlistIndex];
//                         print(featuredmetorlist);
//                         print(featuredmetorlistItem);

//                         return Padding(

              FutureBuilder<ApiCallResponse>(
                  future: GetFeaturedMentorsCall.call(),
                  builder: (context, snapshot) {
                    final listViewGetFeaturedMentorsResponse = snapshot.data;
                    // print('object:${listViewGetFeaturedMentorsResponse.response!.body}.');

                    if (!snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 70.0),
                        child: Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                    final featuredmetorlist =
                        listViewGetFeaturedMentorsResponse!
                                .jsonBody['featuredMentors'] ??
                            [];
                    print(featuredmetorlist.length);
                    return Container(
                      height: 260,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        scrollDirection: Axis.horizontal,
                        itemCount: listViewGetFeaturedMentorsResponse!
                            .jsonBody['featuredMentors'].length,
                        itemBuilder: (context, index) {
                          var profileImage = listViewGetFeaturedMentorsResponse!
                              .jsonBody['featuredMentors'][index]['photo'];
                          var MentorName = listViewGetFeaturedMentorsResponse!
                              .jsonBody['featuredMentors'][index]['name'];
                          var Occupation = listViewGetFeaturedMentorsResponse!
                              .jsonBody['featuredMentors'][index]['occupation'];
                          var Description = listViewGetFeaturedMentorsResponse!
                                  .jsonBody['featuredMentors'][index]
                              ['description'];
                          return TopMentors(
                            Description: Description,
                            MentorName: MentorName,
                            Occupation: Occupation,
                            profileImage: profileImage,
                          );
                        },
                      ),
                    );
                  }),
            ],
          ),
        ),
      
      ),
    );
  }
}


