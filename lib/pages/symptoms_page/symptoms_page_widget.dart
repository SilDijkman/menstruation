import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'symptoms_page_model.dart';
export 'symptoms_page_model.dart';

class SymptomsPageWidget extends StatefulWidget {
  const SymptomsPageWidget({Key? key}) : super(key: key);

  @override
  _SymptomsPageWidgetState createState() => _SymptomsPageWidgetState();
}

class _SymptomsPageWidgetState extends State<SymptomsPageWidget> {
  late SymptomsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SymptomsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().bleeding = true;
        FFAppState().cramps = true;
      });
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<SymptomsOptionsRecord>>(
      stream: querySymptomsOptionsRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<SymptomsOptionsRecord> symptomsPageSymptomsOptionsRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final symptomsPageSymptomsOptionsRecord =
            symptomsPageSymptomsOptionsRecordList.isNotEmpty
                ? symptomsPageSymptomsOptionsRecordList.first
                : null;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: Color(0xFFF8CBA6),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Color(0xFF262525),
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'Symptoms',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 767.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/fulldesign.png',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            Text(
                              'Are you experiencing any symptoms right now?',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20.0,
                                  ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 10.0, 5.0, 0.0),
                                child: Text(
                                  'Enduring some symptoms? Select it in the dropdown menu and get some personalised information about it. This can be done during any menstrual phase.',
                                  textAlign: TextAlign.center,
                                  style:
                                      FlutterFlowTheme.of(context).titleSmall,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.27, -0.65),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 40.0, 0.0, 0.0),
                                child: FlutterFlowDropDown<int>(
                                  controller: _model.dropDownValueController ??=
                                      FormFieldController<int>(null),
                                  options: [1, 2, 3, 4],
                                  optionLabels: [
                                    'Cramps',
                                    'Fainting',
                                    'Mood swings',
                                    'Anxiety and/or depression'
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue = val),
                                  width: 300.0,
                                  height: 50.0,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  hintText: 'Please select...',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor: Color(0x2EEE8B60),
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Html(
                                  data: () {
                                    if ((_model.dropDownValue.toString() ==
                                            '1') &&
                                        (FFAppState().dateSelected.last == 1)) {
                                      return FFAppState().symptomText[1];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '1') &&
                                        (FFAppState().dateSelected.last == 7)) {
                                      return FFAppState().symptomText[1];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '1') &&
                                        (FFAppState().dateSelected.last == 9)) {
                                      return FFAppState().symptomText[2];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '1') &&
                                        (FFAppState().dateSelected.last ==
                                            13)) {
                                      return FFAppState().symptomText[3];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '1') &&
                                        (FFAppState().dateSelected.last ==
                                            16)) {
                                      return FFAppState().symptomText[4];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '1') &&
                                        (FFAppState().dateSelected.last ==
                                            23)) {
                                      return FFAppState().symptomText[5];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '1') &&
                                        (FFAppState().dateSelected.last ==
                                            29)) {
                                      return FFAppState().symptomText[5];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '2') &&
                                        (FFAppState().dateSelected.last <= 7)) {
                                      return FFAppState().symptomText[6];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '2') &&
                                        (FFAppState().dateSelected.last >= 9)) {
                                      return FFAppState().symptomText[7];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '3') &&
                                        (FFAppState().dateSelected.last <= 7)) {
                                      return FFAppState().symptomText[8];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '3') &&
                                        (FFAppState().dateSelected.last == 9)) {
                                      return FFAppState().symptomText[9];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '3') &&
                                        (FFAppState().dateSelected.last ==
                                            13)) {
                                      return FFAppState().symptomText[10];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '3') &&
                                        (FFAppState().dateSelected.last ==
                                            16)) {
                                      return FFAppState().symptomText[11];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '3') &&
                                        (FFAppState().dateSelected.last >=
                                            23)) {
                                      return FFAppState().symptomText[12];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '4') &&
                                        (FFAppState().dateSelected.last <= 7)) {
                                      return FFAppState().symptomText[13];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '4') &&
                                        (FFAppState().dateSelected.last == 9)) {
                                      return FFAppState().symptomText[14];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '4') &&
                                        (FFAppState().dateSelected.last ==
                                            13)) {
                                      return FFAppState().symptomText[15];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '4') &&
                                        (FFAppState().dateSelected.last ==
                                            16)) {
                                      return FFAppState().symptomText[16];
                                    } else if ((_model.dropDownValue
                                                .toString() ==
                                            '4') &&
                                        (FFAppState().dateSelected.last >=
                                            23)) {
                                      return FFAppState().symptomText[17];
                                    } else {
                                      return 'tt';
                                    }
                                  }(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
