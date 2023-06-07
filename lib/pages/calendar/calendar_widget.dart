import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
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
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
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
              Container(
                width: double.infinity,
                height: 276.0,
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
                alignment: AlignmentDirectional(0.0, 0.59),
                child: FlutterFlowCalendar(
                  color: Color(0x1EFFFFFF),
                  iconColor: FlutterFlowTheme.of(context).info,
                  weekFormat: false,
                  weekStartsMonday: false,
                  onChange: (DateTimeRange? newSelectedDate) {
                    setState(
                        () => _model.calendarSelectedDay = newSelectedDate);
                  },
                  titleStyle: TextStyle(),
                  dayOfWeekStyle: TextStyle(),
                  dateStyle: GoogleFonts.getFont(
                    'Open Sans',
                  ),
                  selectedDateStyle: TextStyle(),
                  inactiveDateStyle: TextStyle(),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.94, 0.59),
                child: Container(
                  width: 206.0,
                  height: 36.0,
                  decoration: BoxDecoration(
                    color: Color(0x3A38B6FF),
                    borderRadius: BorderRadius.circular(90.0),
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.06, 0.45),
                child: Container(
                  width: 110.0,
                  height: 36.0,
                  decoration: BoxDecoration(
                    color: Color(0x3A38B6FF),
                    borderRadius: BorderRadius.circular(90.0),
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.01, -0.77),
                child: Container(
                  width: 206.0,
                  height: 206.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF38B6FF),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.02, -0.56),
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
                          if (FFAppState().dateSelected.last == 1) {
                            return 'ur on ur period';
                          } else if (FFAppState().dateSelected.last == 5) {
                            return 'ur on ur period';
                          } else if (FFAppState().dateSelected.last == 7) {
                            return '23 days till next period';
                          } else if (FFAppState()
                                  .dateSelected
                                  .last
                                  .toString() ==
                              '9') {
                            return '21 days till next period';
                          } else {
                            return '0';
                          }
                        }(),
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
