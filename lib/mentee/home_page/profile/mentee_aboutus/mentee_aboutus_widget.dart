import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mentee_aboutus_model.dart';
export 'mentee_aboutus_model.dart';

class MenteeAboutusWidget extends StatefulWidget {
  const MenteeAboutusWidget({Key? key}) : super(key: key);

  @override
  _MenteeAboutusWidgetState createState() => _MenteeAboutusWidgetState();
}

class _MenteeAboutusWidgetState extends State<MenteeAboutusWidget> {
  late MenteeAboutusModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenteeAboutusModel());
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
            'About us',
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
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Unbounded',
                            color: FlutterFlowTheme.of(context).customColor1,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Text(
                        'As a mentor, it\'s important to respect the privacy and confidentiality of your mentees.\nAll communication, information, and feedback shared between you and your mentee should be kept confidential and not shared with third parties without their explicit permission.\n\nPlease ensure that you maintain appropriate boundaries and avoid sharing personal information about yourself or your mentees. Additionally, if any issues or concerns arise during your mentorship, please communicate respectfully and confidentially with your mentee to address them effectively.\n\n\nThank you for your commitment to maintaining a safe and supportive mentorship environment that fosters trust, respect, and professionalism.',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
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
