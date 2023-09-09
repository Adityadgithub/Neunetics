import 'package:flutter/material.dart';
import '../../../../flutter_flow/flutter_flow_theme.dart';

class TimeModel extends StatefulWidget {
  var time;
  var selectedtime;
  var thisindex;
  TimeModel({this.time, this.selectedtime, this.thisindex});

  @override
  State<TimeModel> createState() => _TimeModelState();
}

class _TimeModelState extends State<TimeModel> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 10.0, top: 15),
      child: 
          Container(
              decoration: BoxDecoration(
                color:widget.selectedtime != widget.thisindex? FlutterFlowTheme.of(context).secondaryBackground:Color(0xFFFBE6BE),
                borderRadius: BorderRadius.circular(1.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Text(
                  '${widget.time}',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
            )
          
    );
  }
}
