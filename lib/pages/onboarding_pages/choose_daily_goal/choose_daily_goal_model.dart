import '/components/daily_goal_bar/daily_goal_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'choose_daily_goal_widget.dart' show ChooseDailyGoalWidget;
import 'package:flutter/material.dart';

class ChooseDailyGoalModel extends FlutterFlowModel<ChooseDailyGoalWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for dailyGoalBar component.
  late DailyGoalBarModel dailyGoalBarModel1;
  // Model for dailyGoalBar component.
  late DailyGoalBarModel dailyGoalBarModel2;
  // Model for dailyGoalBar component.
  late DailyGoalBarModel dailyGoalBarModel3;
  // Model for dailyGoalBar component.
  late DailyGoalBarModel dailyGoalBarModel4;

  @override
  void initState(BuildContext context) {
    dailyGoalBarModel1 = createModel(context, () => DailyGoalBarModel());
    dailyGoalBarModel2 = createModel(context, () => DailyGoalBarModel());
    dailyGoalBarModel3 = createModel(context, () => DailyGoalBarModel());
    dailyGoalBarModel4 = createModel(context, () => DailyGoalBarModel());
  }

  @override
  void dispose() {
    dailyGoalBarModel1.dispose();
    dailyGoalBarModel2.dispose();
    dailyGoalBarModel3.dispose();
    dailyGoalBarModel4.dispose();
  }
}
