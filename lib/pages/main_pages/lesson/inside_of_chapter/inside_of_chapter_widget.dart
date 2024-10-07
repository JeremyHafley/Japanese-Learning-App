import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'inside_of_chapter_model.dart';
export 'inside_of_chapter_model.dart';

class InsideOfChapterWidget extends StatefulWidget {
  const InsideOfChapterWidget({super.key});

  @override
  State<InsideOfChapterWidget> createState() => _InsideOfChapterWidgetState();
}

class _InsideOfChapterWidgetState extends State<InsideOfChapterWidget> {
  late InsideOfChapterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsideOfChapterModel());
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF58595B),
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Lessons',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'CircularStd',
                  color: const Color(0xFF58595B),
                  fontSize: 23.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 1.0,
        ),
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
                    width: 328.0,
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
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 20.0, 20.0, 20.0),
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
                                  'Chapter 1',
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
                                      '0/30 lessons',
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
                                  'For Starters',
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
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Flaskcard');
                      },
                      child: ListTile(
                        leading: const FaIcon(
                          FontAwesomeIcons.solidCheckCircle,
                          color: Color(0xFF22C55E),
                          size: 40.0,
                        ),
                        title: Text(
                          'Flashcard review',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'CircularStd',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        subtitle: Text(
                          'Basic grammar and vocabulary to get you started speaking Japanese fast! ',
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
                        'Use the vocabulary and grammar to solve the challenge. ',
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
                        'Engage with your tutor on what you have learned. ',
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
                        'Engage with your tutor on what you have learned. ',
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
