import '/backend/schema/enums/enums.dart';
import '/components/language_select_bar/language_select_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'create_language_model.dart';
export 'create_language_model.dart';

class CreateLanguageWidget extends StatefulWidget {
  const CreateLanguageWidget({super.key});

  @override
  State<CreateLanguageWidget> createState() => _CreateLanguageWidgetState();
}

class _CreateLanguageWidgetState extends State<CreateLanguageWidget> {
  late CreateLanguageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateLanguageModel());
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
                                mainAxisSize: MainAxisSize.min,
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
                                    'Choose a Language',
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
                                    'What language would you like to start with? \nYou can change it at any time!',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'CircularStd',
                                          color: const Color(0xFF8F9091),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ].divide(const SizedBox(height: 12.0)),
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
                        model: _model.languageSelectBarModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: LanguageSelectBarWidget(
                          selected: FFAppState().selectedLang!,
                          language: Language.Japanese,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.languageSelectBarModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: LanguageSelectBarWidget(
                          selected: FFAppState().selectedLang!,
                          language: Language.English,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.languageSelectBarModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: LanguageSelectBarWidget(
                          selected: FFAppState().selectedLang!,
                          language: Language.Portuguese,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: (FFAppState().selectedLang == Language.None)
                        ? null
                        : () async {
                            context.pushNamed('ChooseGoal');
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
