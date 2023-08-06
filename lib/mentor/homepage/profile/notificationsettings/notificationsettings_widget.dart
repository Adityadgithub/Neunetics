import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'notificationsettings_model.dart';
export 'notificationsettings_model.dart';

class Notificationsettings_mentor extends StatefulWidget {
  const Notificationsettings_mentor({Key? key}) : super(key: key);

  @override
  _Notificationsettings_mentorState createState() =>
      _Notificationsettings_mentorState();
}

class _Notificationsettings_mentorState
    extends State<Notificationsettings_mentor> {
  late NotificationsettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsettingsModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFFBE6BE),
          iconTheme: IconThemeData(color: Colors.black),
          automaticallyImplyLeading: true,
          title: Text(
            'Notificationsz',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Unbounded',
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                  useGoogleFonts: false,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Mentor Messages',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Switch.adaptive(
                            value: _model.switchValue1 ??= true,
                            onChanged: (newValue) async {
                              setState(() => _model.switchValue1 = newValue!);
                            },
                            activeColor: FlutterFlowTheme.of(context).primary,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).accent1,
                            inactiveTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            inactiveThumbColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Booking Notification',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Switch.adaptive(
                            value: _model.switchValue2 ??= true,
                            onChanged: (newValue) async {
                              setState(() => _model.switchValue2 = newValue!);
                            },
                            activeColor: FlutterFlowTheme.of(context).primary,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).accent1,
                            inactiveTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            inactiveThumbColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Project Notification',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Switch.adaptive(
                            value: _model.switchValue3 ??= true,
                            onChanged: (newValue) async {
                              setState(() => _model.switchValue3 = newValue!);
                            },
                            activeColor: FlutterFlowTheme.of(context).primary,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).accent1,
                            inactiveTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            inactiveThumbColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Reschedule Notification',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Switch.adaptive(
                            value: _model.switchValue4 ??= true,
                            onChanged: (newValue) async {
                              setState(() => _model.switchValue4 = newValue!);
                            },
                            activeColor: FlutterFlowTheme.of(context).primary,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).accent1,
                            inactiveTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            inactiveThumbColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Event Notification',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Switch.adaptive(
                            value: _model.switchValue5 ??= true,
                            onChanged: (newValue) async {
                              setState(() => _model.switchValue5 = newValue!);
                            },
                            activeColor: FlutterFlowTheme.of(context).primary,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).accent1,
                            inactiveTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            inactiveThumbColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import 'package:flutter/material.dart';
// import 'notificationsettings_model.dart';
// export 'notificationsettings_model.dart';

// class Notificationsettings_mentor extends StatefulWidget {
//   const Notificationsettings_mentor({Key? key}) : super(key: key);

//   @override
//   _Notificationsettings_mentorState createState() =>
//       _Notificationsettings_mentorState();
// }

// class _Notificationsettings_mentorState
//     extends State<Notificationsettings_mentor> {
//   late NotificationsettingsModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => NotificationsettingsModel());
//   }

//   @override
//   void dispose() {
//     _model.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor:  Color(0xFF1D2428),
//         appBar: AppBar(
//           backgroundColor: Color(0xFFFBE6BE),
//           iconTheme: IconThemeData(color: Colors.black),
//           automaticallyImplyLeading: true,
//           title: Text(
//             'Notifications',
//             style: TextStyle(

//                   fontFamily: 'Unbounded',
//                   fontSize: 21.0,
//                   fontWeight: FontWeight.bold,
//                   // useGoogleFonts: false,
//                 ),
//           ),
//           actions: [],
//           centerTitle: true,
//           elevation: 0.0,
//         ),
//         body: SafeArea(
//           top: true,
//           child: Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(
//                                 10.0, 0.0, 0.0, 0.0),
//                             child: Text(
//                               'Mentor Messages',
//                               style: TextStyle(
//                                     fontFamily: 'Readex Pro',
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                             ),
//                           ),
//                           // Switch.adaptive(
//                           //   value: _model.switchValue1 ??= true,
//                           //   onChanged: (newValue) async {
//                           //     setState(() => _model.switchValue1 = newValue!);
//                           //   },
//                           //   activeColor: FlutterFlowTheme.of(context).primary,
//                           //   activeTrackColor:
//                           //       FlutterFlowTheme.of(context).accent1,
//                           //   inactiveTrackColor:
//                           //       FlutterFlowTheme.of(context).alternate,
//                           //   inactiveThumbColor:
//                           //       FlutterFlowTheme.of(context).secondaryText,
//                           // ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(
//                                 10.0, 0.0, 0.0, 0.0),
//                             child: Text(
//                               'Booking Notification',
//                               style: TextStyle(
//                                     fontFamily: 'Readex Pro',
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                             ),
//                           ),
//                           Switch.adaptive(
//                             value: _model.switchValue2 ??= true,
//                             onChanged: (newValue) async {
//                               setState(() => _model.switchValue2 = newValue!);
//                             },
//                             activeColor: FlutterFlowTheme.of(context).primary,
//                             activeTrackColor:
//                                 FlutterFlowTheme.of(context).accent1,
//                             inactiveTrackColor:
//                                 FlutterFlowTheme.of(context).alternate,
//                             inactiveThumbColor:
//                                 FlutterFlowTheme.of(context).secondaryText,
//                           ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(
//                                 10.0, 0.0, 0.0, 0.0),
//                             child: Text(
//                               'Project Notification',
//                               style: TextStyle(
//                                     fontFamily: 'Readex Pro',
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                             ),
//                           ),
//                           // Switch.adaptive(
//                           //   value: _model.switchValue3 ??= true,
//                           //   onChanged: (newValue) async {
//                           //     setState(() => _model.switchValue3 = newValue!);
//                           //   },
//                           //   activeColor: FlutterFlowTheme.of(context).primary,
//                           //   activeTrackColor:
//                           //       FlutterFlowTheme.of(context).accent1,
//                           //   inactiveTrackColor:
//                           //       FlutterFlowTheme.of(context).alternate,
//                           //   inactiveThumbColor:
//                           //       FlutterFlowTheme.of(context).secondaryText,
//                           // ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(
//                                 10.0, 0.0, 0.0, 0.0),
//                             child: Text(
//                               'Reschedule Notification',
//                               style: TextStyle(
//                                     fontFamily: 'Readex Pro',
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                             ),
//                           ),
//                           // Switch.adaptive(
//                           //   value: _model.switchValue4 ??= true,
//                           //   onChanged: (newValue) async {
//                           //     setState(() => _model.switchValue4 = newValue!);
//                           //   },
//                           //   activeColor: FlutterFlowTheme.of(context).primary,
//                           //   activeTrackColor:
//                           //       FlutterFlowTheme.of(context).accent1,
//                           //   inactiveTrackColor:
//                           //       FlutterFlowTheme.of(context).alternate,
//                           //   inactiveThumbColor:
//                           //       FlutterFlowTheme.of(context).secondaryText,
//                           // ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(
//                                 10.0, 0.0, 0.0, 0.0),
//                             child: Text(
//                               'Event Notification',
//                               style: TextStyle(
//                                     fontFamily: 'Readex Pro',
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                             ),
//                           ),
//                           // Switch.adaptive(
//                           //   value: _model.switchValue5 ??= true,
//                           //   onChanged: (newValue) async {
//                           //     setState(() => _model.switchValue5 = newValue!);
//                           //   },
//                           //   activeColor: FlutterFlowTheme.of(context).primary,
//                           //   activeTrackColor:
//                           //       FlutterFlowTheme.of(context).accent1,
//                           //   inactiveTrackColor:
//                           //       FlutterFlowTheme.of(context).alternate,
//                           //   inactiveThumbColor:
//                           //       FlutterFlowTheme.of(context).secondaryText,
//                           // ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
