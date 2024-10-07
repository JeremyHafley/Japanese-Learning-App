import '/flutter_flow/flutter_flow_util.dart';
import 'select_mission_widget.dart' show SelectMissionWidget;
import 'package:flutter/material.dart';

class SelectMissionModel extends FlutterFlowModel<SelectMissionWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
