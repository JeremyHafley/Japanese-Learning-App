import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/daily_goal_bar/daily_goal_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'choose_daily_goal_model.dart';
export 'choose_daily_goal_model.dart';

class ChooseDailyGoalWidget extends StatefulWidget {
  const ChooseDailyGoalWidget({super.key});

  @override
  State<ChooseDailyGoalWidget> createState() => _ChooseDailyGoalWidgetState();
}

class _ChooseDailyGoalWidgetState extends State<ChooseDailyGoalWidget> {
  late ChooseDailyGoalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseDailyGoalModel());
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
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
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
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await currentUserReference!
                                          .update(createUserRecordData(
                                        dailyGoal: DailyGoal.Unknown,
                                        userStatus: UserStatus.free,
                                      ));

                                      context.goNamed('Dashboard');
                                    },
                                    child: const Icon(
                                      Icons.close,
                                      color: Color(0xFF8F9091),
                                      size: 24.0,
                                    ),
                                  ),
                                  Text(
                                    'Choose your daily goals',
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
                                ].divide(const SizedBox(height: 10.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 15.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      wrapWithModel(
                        model: _model.dailyGoalBarModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: DailyGoalBarWidget(
                          icon: const Icon(
                            FFIcons.kgenin,
                            color: Color(0xFFDB1F2F),
                            size: 24.0,
                          ),
                          desc: '5 minutes per day',
                          title: DailyGoal.Genin,
                          selected: FFAppState().dailyGoal!,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.dailyGoalBarModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: DailyGoalBarWidget(
                          icon: const Icon(
                            FFIcons.kchuunin,
                            color: Color(0xFFDB1F2F),
                            size: 24.0,
                          ),
                          desc: '10 minutes per day',
                          title: DailyGoal.Chuunin,
                          selected: FFAppState().dailyGoal!,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.dailyGoalBarModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: DailyGoalBarWidget(
                          icon: const Icon(
                            FFIcons.kgroup3,
                            color: Color(0xFFDB1F2F),
                            size: 24.0,
                          ),
                          desc: '15 minutes per day',
                          title: DailyGoal.Jounin,
                          selected: FFAppState().dailyGoal!,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.dailyGoalBarModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: DailyGoalBarWidget(
                          icon: const Icon(
                            FFIcons.kgroup4,
                            color: Color(0xFFDB1F2F),
                            size: 24.0,
                          ),
                          desc: '20 minutes per day',
                          title: DailyGoal.Kage,
                          selected: FFAppState().dailyGoal!,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: (FFAppState().dailyGoal == DailyGoal.Unknown)
                        ? null
                        : () async {
                            context.pushNamed('MakeTest');
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
                          fontFamily: 'CircularStd',
                          fontSize: 11.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ].divide(const SizedBox(height: 25.0)).around(const SizedBox(height: 25.0)),
            ),
          ),
        ),
      ),
    );
  }
}
