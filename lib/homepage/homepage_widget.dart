import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../loginsignup/loginsignup_widget.dart';
import '../scanner/scanner_widget.dart';
import '../search_thing/search_thing_widget.dart';
import '../typeofproduct/typeofproduct_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({Key? key}) : super(key: key);

  @override
  _HomepageWidgetState createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (Theme.of(context).brightness == Brightness.dark)
                    Image.asset(
                      'assets/images/Untitled.png',
                      width: 250,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  if (Theme.of(context).brightness == Brightness.light)
                    Image.asset(
                      'assets/images/stroo.png',
                      width: 240,
                      height: 290,
                      fit: BoxFit.cover,
                    ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: [
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 220),
                                reverseDuration: Duration(milliseconds: 220),
                                child: TypeofproductWidget(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(2, 2, 2, 12),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.44,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x34090F13),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 220),
                                          reverseDuration:
                                              Duration(milliseconds: 220),
                                          child: SearchThingWidget(),
                                        ),
                                      );
                                    },
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 8, 12, 8),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType
                                                      .rightToLeft,
                                                  duration: Duration(
                                                      milliseconds: 220),
                                                  reverseDuration: Duration(
                                                      milliseconds: 220),
                                                  child: TypeofproductWidget(),
                                                ),
                                              );
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 8, 12, 8),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      InkWell(
                                                        onTap: () async {
                                                          await Navigator.push(
                                                            context,
                                                            PageTransition(
                                                              type: PageTransitionType
                                                                  .rightToLeft,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      220),
                                                              reverseDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          220),
                                                              child:
                                                                  TypeofproductWidget(),
                                                            ),
                                                          );
                                                        },
                                                        child: Text(
                                                          'Danger of products',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .subtitle1,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-5.19, 0.66),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 50, 0, 0),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 170,
                                              icon: Icon(
                                                Icons.block,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 100,
                                              ),
                                              onPressed: () async {
                                                await Navigator.push(
                                                  context,
                                                  PageTransition(
                                                    type: PageTransitionType
                                                        .rightToLeft,
                                                    duration: Duration(
                                                        milliseconds: 220),
                                                    reverseDuration: Duration(
                                                        milliseconds: 220),
                                                    child: SearchThingWidget(),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 220),
                                reverseDuration: Duration(milliseconds: 220),
                                child: TypeofproductWidget(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(2, 2, 2, 12),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        duration: Duration(milliseconds: 220),
                                        reverseDuration:
                                            Duration(milliseconds: 220),
                                        child: TypeofproductWidget(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.44,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x34090F13),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 8, 12, 8),
                                        child: InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType
                                                    .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 220),
                                                reverseDuration:
                                                    Duration(milliseconds: 220),
                                                child: TypeofproductWidget(),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 0, 0),
                                                child: InkWell(
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 220),
                                                        reverseDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    220),
                                                        child:
                                                            TypeofproductWidget(),
                                                      ),
                                                    );
                                                  },
                                                  child: Text(
                                                    'Alternatives',
                                                    textAlign: TextAlign.end,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1,
                                                  ),
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 120,
                                                icon: FaIcon(
                                                  FontAwesomeIcons.pumpSoap,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 100,
                                                ),
                                                onPressed: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .rightToLeft,
                                                      duration: Duration(
                                                          milliseconds: 220),
                                                      reverseDuration: Duration(
                                                          milliseconds: 220),
                                                      child:
                                                          TypeofproductWidget(),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScannerWidget(),
                        ),
                      );
                    },
                    child: Container(
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF67ACFF),
                        borderRadius: BorderRadius.circular(16),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFF67ACFF),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                        child: Text(
                          'Scanner',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 2, 16, 12),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF67ACFF),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Color(0x34090F13),
                            offset: Offset(0, 4),
                          )
                        ],
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.86, 0.75),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginsignupWidget(),
                    ),
                  );
                },
                text: 'Log out',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            if (Theme.of(context).brightness == Brightness.light)
              Align(
                alignment: AlignmentDirectional(-0.86, 0.75),
                child: FFButtonWidget(
                  onPressed: () async {
                    setDarkModeSetting(context, ThemeMode.dark);
                  },
                  text: 'Dark Mode',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF1A1F24),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            if (Theme.of(context).brightness == Brightness.dark)
              Align(
                alignment: AlignmentDirectional(-0.86, 0.75),
                child: FFButtonWidget(
                  onPressed: () async {
                    setDarkModeSetting(context, ThemeMode.light);
                  },
                  text: 'Light Mode',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFFF1F4F8),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
