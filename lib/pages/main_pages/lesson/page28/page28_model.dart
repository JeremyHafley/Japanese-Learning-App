import '/flutter_flow/flutter_flow_util.dart';
import 'page28_widget.dart' show Page28Widget;
import 'package:flutter/material.dart';

class Page28Model extends FlutterFlowModel<Page28Widget> {
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
