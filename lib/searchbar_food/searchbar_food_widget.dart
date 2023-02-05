import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../dangerous_products/dangerous_products_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchbarFoodWidget extends StatefulWidget {
  const SearchbarFoodWidget({Key? key}) : super(key: key);

  @override
  _SearchbarFoodWidgetState createState() => _SearchbarFoodWidgetState();
}

class _SearchbarFoodWidgetState extends State<SearchbarFoodWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 152,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                shape: BoxShape.rectangle,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 30, 0, 0),
                                    child: Text(
                                      'Search',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Source Sans Pro',
                                            fontSize: 90,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 12, 0, 12),
                    child: Text(
                      'Recommended for you',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 60,
                  icon: Icon(
                    Icons.search,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 15,
                  ),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DangerousProductsWidget(),
                      ),
                    );
                  },
                ),
                Expanded(
                  child: TextFormField(
                    controller: textController,
                    onFieldSubmitted: (_) async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DangerousProductsWidget(),
                        ),
                      );

                      final searchFoodCreateData = createSearchFoodRecordData();
                      await SearchFoodRecord.collection
                          .doc()
                          .set(searchFoodCreateData);
                    },
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'search food...',
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      filled: true,
                      fillColor: Color(0xFF67ACFF),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFFD5D9DD),
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 300, 0, 0),
            child: Image.asset(
              'assets/images/stroo.png',
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
