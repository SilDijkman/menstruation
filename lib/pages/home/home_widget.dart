import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
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
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFF8CBA6),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Cycles',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 737.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/fulldesign.png',
                              ).image,
                            ),
                            shape: BoxShape.rectangle,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.02, -0.88),
                                child: Container(
                                  width: 247.0,
                                  height: 247.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF38B6FF),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.41, 0.08),
                                child: Container(
                                  width: 164.0,
                                  height: 164.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF313131),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-2.28, 0.08),
                                child: Container(
                                  width: 267.0,
                                  height: 164.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF313131),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(2.87, 0.9),
                                child: Container(
                                  width: 267.0,
                                  height: 164.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF313131),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.01, -0.59),
                                child: Text(
                                  valueOrDefault<String>(
                                    () {
                                      if (FFAppState().dateSelected.last <= 5) {
                                        return 'You are on your period';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last ==
                                          7) {
                                        return '23 days until your next period';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '9') {
                                        return '21 Days until your next period';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '11') {
                                        return '19 Days until your next period';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '12') {
                                        return '18 Days until your next period';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '13') {
                                        return '17 Days until your next period';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '14') {
                                        return '16  Days until your next period';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '16') {
                                        return '14 Days until your next period';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '20') {
                                        return '10 Days until your next period';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '23') {
                                        return '7 Days until your next period';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '25') {
                                        return '5 Days until your next period';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '26') {
                                        return '4 Days until your next period';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '29') {
                                        return '1 Day until your next period';
                                      } else {
                                        return 'nothinh';
                                      }
                                    }(),
                                    '1',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.79, -0.02),
                                child: Text(
                                  valueOrDefault<String>(
                                    () {
                                      if (FFAppState().dateSelected.last <= 5) {
                                        return 'You are on your period';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last ==
                                          7) {
                                        return 'You are in the follicular phase';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '9') {
                                        return 'You are in the follicular phase';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '11') {
                                        return 'You are in the follicular phase';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '12') {
                                        return 'You are ovulating';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '13') {
                                        return 'You are ovulating';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '14') {
                                        return 'You are in the luteal phase';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '16') {
                                        return 'You are in the luteal phase';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '20') {
                                        return 'You are in the luteal phase';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '23') {
                                        return 'You might be experiencing PMS right now';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '25') {
                                        return 'You might be experiencing PMS right now';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '26') {
                                        return 'You might be experiencing PMS right now';
                                      } else if (FFAppState()
                                              .dateSelected
                                              .last
                                              .toString() ==
                                          '29') {
                                        return 'You might be experiencing PMS right now';
                                      } else {
                                        return 'nothinh';
                                      }
                                    }(),
                                    '1',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.9, 0.17),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('Info_Page');
                                  },
                                  text: 'What can I expect?',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF288AC3),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.3, 0.9),
                                child: Container(
                                  width: 164.0,
                                  height: 164.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF313131),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.44, 0.74),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('symptoms_page');
                                  },
                                  text: 'Add symptom',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF313131),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 167.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: Image.asset(
                              'assets/images/Screenshot_2023-06-12_144324.png',
                            ).image,
                          ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 167.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: Image.asset(
                              'assets/images/Screenshot_2023-06-12_144352.png',
                            ).image,
                          ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 167.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: Image.asset(
                              'assets/images/Screenshot_2023-06-12_144418.png',
                            ).image,
                          ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 167.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: Image.asset(
                              'assets/images/Screenshot_2023-06-12_144444.png',
                            ).image,
                          ),
                        ),
                      ),
                    ],
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
