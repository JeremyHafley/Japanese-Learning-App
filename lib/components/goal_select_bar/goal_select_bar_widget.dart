import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'goal_select_bar_model.dart';
export 'goal_select_bar_model.dart';

class GoalSelectBarWidget extends StatefulWidget {
  const GoalSelectBarWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.selectedGoals,
    required this.currentGoal,
  });

  final Widget? icon;
  final String? title;
  final List<Goal>? selectedGoals;
  final Goal? currentGoal;

  @override
  State<GoalSelectBarWidget> createState() => _GoalSelectBarWidgetState();
}

class _GoalSelectBarWidgetState extends State<GoalSelectBarWidget> {
  late GoalSelectBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoalSelectBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        if (FFAppState().selectedGoals.contains(widget.currentGoal)) {
          FFAppState().removeFromSelectedGoals(widget.currentGoal!);
          _model.updatePage(() {});
        } else {
          FFAppState().addToSelectedGoals(widget.currentGoal!);
          _model.updatePage(() {});
        }
      },
      child: Container(
        width: 327.0,
        height: 56.0,
        decoration: BoxDecoration(
          color: !widget.selectedGoals!.contains(widget.currentGoal)
              ? FlutterFlowTheme.of(context).secondaryBackground
              : const Color(0xFFF4ECF9),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(24.0),
            bottomRight: Radius.circular(24.0),
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
          border: Border.all(
            color: !widget.selectedGoals!.contains(widget.currentGoal)
                ? const Color(0xFFCBCCCC)
                : FlutterFlowTheme.of(context).primary,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                child: widget.icon!,
              ),
              Text(
                valueOrDefault<String>(
                  widget.title,
                  'Watch Anime',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'CircularStd',
                      color: const Color(0xFF58595B),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
