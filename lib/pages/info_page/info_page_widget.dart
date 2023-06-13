import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'info_page_model.dart';
export 'info_page_model.dart';

class InfoPageWidget extends StatefulWidget {
  const InfoPageWidget({Key? key}) : super(key: key);

  @override
  _InfoPageWidgetState createState() => _InfoPageWidgetState();
}

class _InfoPageWidgetState extends State<InfoPageWidget> {
  late InfoPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoPageModel());
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
            'Phase Information',
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
                height: 673.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/fulldesign.png',
                    ).image,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.16, -1.0),
                child: Container(
                  width: 353.0,
                  height: 793.0,
                  decoration: BoxDecoration(),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Html(
                        data: valueOrDefault<String>(
                          () {
                            if (FFAppState().dateSelected.last == 1) {
                              return FFAppState().infoDay[5];
                            } else if (FFAppState().dateSelected.last == 7) {
                              return FFAppState().infoDay[0];
                            } else if (FFAppState()
                                    .dateSelected
                                    .last
                                    .toString() ==
                                '9') {
                              return FFAppState().infoDay[1];
                            } else if (FFAppState()
                                    .dateSelected
                                    .last
                                    .toString() ==
                                '13') {
                              return FFAppState().infoDay[2];
                            } else if (FFAppState()
                                    .dateSelected
                                    .last
                                    .toString() ==
                                '16') {
                              return FFAppState().infoDay[3];
                            } else if (FFAppState()
                                    .dateSelected
                                    .last
                                    .toString() ==
                                '23') {
                              return FFAppState().infoDay[4];
                            } else if (FFAppState()
                                    .dateSelected
                                    .last
                                    .toString() ==
                                '29') {
                              return FFAppState().infoDay[4];
                            } else {
                              return 'nothinh';
                            }
                          }(),
                          '1',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
