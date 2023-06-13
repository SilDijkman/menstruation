import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendar_model.dart';
export 'calendar_model.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  late CalendarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarModel());
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
            'Calendar',
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
                  Container(
                    width: double.infinity,
                    height: 459.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/fulldesign.png',
                        ).image,
                      ),
                    ),
                    child: Stack(
                      children: [],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, -0.9),
                    child: Container(
                      width: 233.0,
                      height: 233.0,
                      decoration: BoxDecoration(
                        color: Color(0x99E62D2B),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.02, -0.6),
                    child: StreamBuilder<List<NotificationValueRecord>>(
                      stream: queryNotificationValueRecord(
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          );
                        }
                        List<NotificationValueRecord>
                            textNotificationValueRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final textNotificationValueRecord =
                            textNotificationValueRecordList.isNotEmpty
                                ? textNotificationValueRecordList.first
                                : null;
                        return Text(
                          valueOrDefault<String>(
                            () {
                              if (FFAppState().dateSelected.last <= 5) {
                                return 'You are on your period';
                              } else if (FFAppState().dateSelected.last == 7) {
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
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.01),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.615,
                      height: 401.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: Image.asset(
                            'assets/images/graph.png',
                          ).image,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
