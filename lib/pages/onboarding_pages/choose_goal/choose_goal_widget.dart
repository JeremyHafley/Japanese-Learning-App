import '/backend/schema/enums/enums.dart';
import '/components/goal_select_bar/goal_select_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'choose_goal_model.dart';
export 'choose_goal_model.dart';

class ChooseGoalWidget extends StatefulWidget {
  const ChooseGoalWidget({super.key});

  @override
  State<ChooseGoalWidget> createState() => _ChooseGoalWidgetState();
}

class _ChooseGoalWidgetState extends State<ChooseGoalWidget> {
  late ChooseGoalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseGoalModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Container(
                    width: 370.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF4ECF9),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24.0),
                        bottomRight: Radius.circular(24.0),
                        topLeft: Radius.circular(24.0),
                        topRight: Radius.circular(24.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 18.0, 15.0, 18.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.safePop();
                                  },
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                ),
                                Text(
                                  'Choose your goals',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'CircularStd',
                                        color: const Color(0xFF58595B),
                                        fontSize: 23.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Text(
                                  'What are your main goals? We will help you achieve them! You can choose at least 3.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'CircularStd',
                                        color: const Color(0xFF8F9091),
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 10.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 16.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      wrapWithModel(
                        model: _model.goalSelectBarModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: GoalSelectBarWidget(
                          icon: const Icon(
                            Icons.play_circle_outline_rounded,
                            color: Color(0xFFFFA033),
                            size: 24.0,
                          ),
                          title: 'Watch Anime',
                          selectedGoals: FFAppState().selectedGoals,
                          currentGoal: Goal.Watch_Anime,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.goalSelectBarModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: GoalSelectBarWidget(
                          icon: const Icon(
                            FFIcons.kclarityWorldLine,
                            color: Color(0xFFE76974),
                            size: 24.0,
                          ),
                          title: 'Learn from Scratch',
                          selectedGoals: FFAppState().selectedGoals,
                          currentGoal: Goal.Learn_from_Scratch,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.goalSelectBarModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: GoalSelectBarWidget(
                          icon: const Icon(
                            FFIcons.kfluentSpeaker232Regular,
                            color: Color(0xFF22C55E),
                            size: 24.0,
                          ),
                          title: 'Pratice my speaking',
                          selectedGoals: FFAppState().selectedGoals,
                          currentGoal: Goal.Practice_my_speaking,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.goalSelectBarModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: GoalSelectBarWidget(
                          icon: const Icon(
                            FFIcons.kobject,
                            color: Color(0xFF8C4B00),
                            size: 24.0,
                          ),
                          title: 'Improve my accent',
                          selectedGoals: FFAppState().selectedGoals,
                          currentGoal: Goal.Improve_my_accent,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.goalSelectBarModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: GoalSelectBarWidget(
                          icon: const Icon(
                            Icons.nights_stay_rounded,
                            color: Color(0xFFC71C2B),
                            size: 24.0,
                          ),
                          title: 'Sleep Learning',
                          selectedGoals: FFAppState().selectedGoals,
                          currentGoal: Goal.Sleep_Learning,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: !(FFAppState().selectedGoals.isNotEmpty)
                        ? null
                        : () async {
                            context.pushNamed('ChooseLevel');
                          },
                    text: 'Continue',
                    options: FFButtonOptions(
                      width: 327.0,
                      height: 48.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Outfit',
                                color: Colors.white,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                      disabledColor: const Color(0xFFEEEEEF),
                      disabledTextColor: const Color(0xFFB2B3B4),
                    ),
                  ),
                ),
                RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'By using it you confirm that you have read and \nagree to our ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFFB2B3B4),
                              fontSize: 11.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      const TextSpan(
                        text: ' terms of service ',
                        style: TextStyle(
                          color: Color(0xFF252526),
                        ),
                      ),
                      const TextSpan(
                        text: 'and',
                        style: TextStyle(
                          color: Color(0xFFB2B3B4),
                        ),
                      ),
                      const TextSpan(
                        text: ' privacy policy.',
                        style: TextStyle(
                          color: Color(0xFF252526),
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 11.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ].divide(const SizedBox(height: 25.0)).around(const SizedBox(height: 25.0)),
            ),
          ),
        ),
      ),
    );
  }
}
