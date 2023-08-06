import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mentor_model_model.dart';
export 'mentor_model_model.dart';

class MentorModelWidget extends StatefulWidget {
  const MentorModelWidget({Key? key}) : super(key: key);

  @override
  _MentorModelWidgetState createState() => _MentorModelWidgetState();
}

class _MentorModelWidgetState extends State<MentorModelWidget> {
  late MentorModelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MentorModelModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
