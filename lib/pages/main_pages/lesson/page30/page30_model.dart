import '/flutter_flow/flutter_flow_util.dart';
import 'page30_widget.dart' show Page30Widget;
import 'package:flutter/material.dart';

class Page30Model extends FlutterFlowModel<Page30Widget> {
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
