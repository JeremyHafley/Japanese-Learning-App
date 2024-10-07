import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'daily_goal_bar_model.dart';
export 'daily_goal_bar_model.dart';

class DailyGoalBarWidget extends StatefulWidget {
  const DailyGoalBarWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.desc,
    required this.selected,
  });

  final Widget? icon;
  final DailyGoal? title;
  final String? desc;
  final DailyGoal? selected;

  @override
  State<DailyGoalBarWidget> createState() => _DailyGoalBarWidgetState();
}

class _DailyGoalBarWidgetState extends State<DailyGoalBarWidget> {
  late DailyGoalBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DailyGoalBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        FFAppState().dailyGoal = widget.title;
        _model.updatePage(() {});
      },
      child: Container(
        width: 327.0,
        height: 76.0,
        decoration: BoxDecoration(
          color: widget.title != widget.selected
              ? FlutterFlowTheme.of(context).secondaryBackground
              : const Color(0xFFF4ECF9),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(24.0),
            bottomRight: Radius.circular(24.0),
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
          border: Border.all(
            color: widget.title != widget.selected
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
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.title?.name,
                      'Genin',
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'CircularStd',
                          color: const Color(0xFF58595B),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.desc,
                      '5 minutes per day',
                    ),
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'CircularStd',
                          color: const Color(0xFFCBCCCC),
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
