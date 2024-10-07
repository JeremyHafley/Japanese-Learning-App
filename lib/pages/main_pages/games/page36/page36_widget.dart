import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'page36_model.dart';
export 'page36_model.dart';

class Page36Widget extends StatefulWidget {
  const Page36Widget({super.key});

  @override
  State<Page36Widget> createState() => _Page36WidgetState();
}

class _Page36WidgetState extends State<Page36Widget> {
  late Page36Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Page36Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                      Text(
                        'Games',
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFF58595B),
                                  fontSize: 23.0,
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ].divide(const SizedBox(width: 10.0)),
                  ),
                ),
                Container(
                  width: 328.0,
                  height: 160.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFF8C3CC2),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Game 1',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'CircularStd',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Container(
                                width: 110.0,
                                height: 28.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(16.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'High Score',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'CircularStd',
                                          color: const Color(0xFF58595B),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            spacing: 5.0,
                            runSpacing: 5.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Text(
                                'Description',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'CircularStd',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Text(
                                'Learn the basics of the language: make new friends, plan a family dinner, go shopping and much more!',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'CircularStd',
                                      color: const Color(0xFFE2DADA),
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                      lineHeight: 1.2,
                                    ),
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(height: 15.0)),
                      ),
                    ),
                  ),
                ),
                Wrap(
                  spacing: 0.0,
                  runSpacing: 0.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    ListTile(
                      leading: const FaIcon(
                        FontAwesomeIcons.solidCheckCircle,
                        color: Color(0xFFEEEEEF),
                        size: 40.0,
                      ),
                      title: Text(
                        'How to play',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'CircularStd',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      subtitle: Text(
                        'Basic grammar and vocabulary to get \nyou started speaking Japanese fast! ',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'CircularStd',
                                  color: const Color(0xFFB2B3B4),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(33.0, 0.0, 0.0, 0.0),
                      child: Container(
                        width: 6.0,
                        height: 48.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFFEEEEEF),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const FaIcon(
                        FontAwesomeIcons.solidCheckCircle,
                        color: Color(0xFFEEEEEF),
                        size: 40.0,
                      ),
                      title: Text(
                        'Writing Challenge',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'CircularStd',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      subtitle: Text(
                        'Use the vocabulary and grammar to \nsolve the challenge. ',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'CircularStd',
                                  color: const Color(0xFFB2B3B4),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(33.0, 0.0, 0.0, 0.0),
                      child: Container(
                        width: 6.0,
                        height: 48.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFFEEEEEF),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const FaIcon(
                        FontAwesomeIcons.solidCheckCircle,
                        color: Color(0xFFEEEEEF),
                        size: 40.0,
                      ),
                      title: Text(
                        'Dialogue',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'CircularStd',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      subtitle: Text(
                        'Engage with your tutor on what you\nhave learned. ',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'CircularStd',
                                  color: const Color(0xFFB2B3B4),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(33.0, 0.0, 0.0, 0.0),
                      child: Container(
                        width: 6.0,
                        height: 48.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFFEEEEEF),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const FaIcon(
                        FontAwesomeIcons.solidCheckCircle,
                        color: Color(0xFFEEEEEF),
                        size: 40.0,
                      ),
                      title: Text(
                        'Review',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'CircularStd',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      subtitle: Text(
                        'Engage with your tutor on what you\nhave learned. ',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'CircularStd',
                                  color: const Color(0xFFB2B3B4),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFB2B3B4),
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                  ],
                ),
              ]
                  .divide(const SizedBox(height: 35.0))
                  .addToStart(const SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
