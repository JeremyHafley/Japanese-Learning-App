import '/flutter_flow/flutter_flow_util.dart';
import 'select_chapter_widget.dart' show SelectChapterWidget;
import 'package:flutter/material.dart';

class SelectChapterModel extends FlutterFlowModel<SelectChapterWidget> {
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
