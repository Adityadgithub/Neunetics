import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mentee_booking_model.dart';
export 'mentee_booking_model.dart';

class MenteeBookingWidget extends StatefulWidget {
  const MenteeBookingWidget({Key? key}) : super(key: key);

  @override
  _MenteeBookingWidgetState createState() => _MenteeBookingWidgetState();
}

class _MenteeBookingWidgetState extends State<MenteeBookingWidget> {
  late MenteeBookingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenteeBookingModel());
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
            'Booking',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
           
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 18, 10, 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Text(
                          'Today',
                          style:
                              TextStyle(
                                    fontFamily: 'Unbounded',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDDFAEA),
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Color(0xFF6DC38D),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Color(0xFF827AE1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1573496799652-408c2ac9fe98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                          width: 65,
                                          height: 65,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.65,
                                          child: AutoSizeText(
                                            'Congratulations! Your mentor has accepted your request.',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                  fontFamily: 'Inter',
                                                  fontSize: 16,
                                                ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          '5:00 PM 03/02/2022',
                                          style: TextStyle(
                                                fontFamily: 'Unbounded',
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                // useGoogleFonts: false,
                                              ),
                                        ),
                                        SizedBox(height: 15),
                                        Text(
                                          '15 min ago',
                                          style: TextStyle(
                                                fontFamily: 'Readex Pro',
                                                color: Color(0xFF5D5D5D),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    
      ),
    );
  
  }
}
