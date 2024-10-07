import '/components/goal_select_bar/goal_select_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'choose_goal_widget.dart' show ChooseGoalWidget;
import 'package:flutter/material.dart';

class ChooseGoalModel extends FlutterFlowModel<ChooseGoalWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for GoalSelectBar component.
  late GoalSelectBarModel goalSelectBarModel1;
  // Model for GoalSelectBar component.
  late GoalSelectBarModel goalSelectBarModel2;
  // Model for GoalSelectBar component.
  late GoalSelectBarModel goalSelectBarModel3;
  // Model for GoalSelectBar component.
  late GoalSelectBarModel goalSelectBarModel4;
  // Model for GoalSelectBar component.
  late GoalSelectBarModel goalSelectBarModel5;

  @override
  void initState(BuildContext context) {
    goalSelectBarModel1 = createModel(context, () => GoalSelectBarModel());
    goalSelectBarModel2 = createModel(context, () => GoalSelectBarModel());
    goalSelectBarModel3 = createModel(context, () => GoalSelectBarModel());
    goalSelectBarModel4 = createModel(context, () => GoalSelectBarModel());
    goalSelectBarModel5 = createModel(context, () => GoalSelectBarModel());
  }

  @override
  void dispose() {
    goalSelectBarModel1.dispose();
    goalSelectBarModel2.dispose();
    goalSelectBarModel3.dispose();
    goalSelectBarModel4.dispose();
    goalSelectBarModel5.dispose();
  }
}
