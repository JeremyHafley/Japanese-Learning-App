import '/flutter_flow/flutter_flow_util.dart';
import 'choose_game_widget.dart' show ChooseGameWidget;
import 'package:flutter/material.dart';

class ChooseGameModel extends FlutterFlowModel<ChooseGameWidget> {
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
