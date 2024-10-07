import '/components/language_select_bar/language_select_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_language_widget.dart' show CreateLanguageWidget;
import 'package:flutter/material.dart';

class CreateLanguageModel extends FlutterFlowModel<CreateLanguageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for LanguageSelectBar component.
  late LanguageSelectBarModel languageSelectBarModel1;
  // Model for LanguageSelectBar component.
  late LanguageSelectBarModel languageSelectBarModel2;
  // Model for LanguageSelectBar component.
  late LanguageSelectBarModel languageSelectBarModel3;

  @override
  void initState(BuildContext context) {
    languageSelectBarModel1 =
        createModel(context, () => LanguageSelectBarModel());
    languageSelectBarModel2 =
        createModel(context, () => LanguageSelectBarModel());
    languageSelectBarModel3 =
        createModel(context, () => LanguageSelectBarModel());
  }

  @override
  void dispose() {
    languageSelectBarModel1.dispose();
    languageSelectBarModel2.dispose();
    languageSelectBarModel3.dispose();
  }
}
