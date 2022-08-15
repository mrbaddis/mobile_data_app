import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AddSimWidget extends StatefulWidget {
  const AddSimWidget({Key? key}) : super(key: key);

  @override
  _AddSimWidgetState createState() => _AddSimWidgetState();
}

class _AddSimWidgetState extends State<AddSimWidget>
    with TickerProviderStateMixin {
  TextEditingController? simIdController;
  bool? emailqrcodeValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 39),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    simIdController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).customColor1,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).dark400,
            size: 24,
          ),
        ),
        title: Text(
          'Add Your eSim',
          style: FlutterFlowTheme.of(context).subtitle2,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).customColor1,
      body: SafeArea(
        child: StreamBuilder<List<ProductNameRecord>>(
          stream: queryProductNameRecord(
            singleRecord: true,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: SpinKitCubeGrid(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    size: 50,
                  ),
                ),
              );
            }
            List<ProductNameRecord> columnProductNameRecordList =
                snapshot.data!;
            // Return an empty Container when the document does not exist.
            if (snapshot.data!.isEmpty) {
              return Container();
            }
            final columnProductNameRecord =
                columnProductNameRecordList.isNotEmpty
                    ? columnProductNameRecordList.first
                    : null;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Screen_Shot_2022-08-14_at_4.13.28_PM.png',
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        fit: BoxFit.contain,
                      ).animated([animationsMap['imageOnPageLoadAnimation']!]),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                    child: TextFormField(
                      controller: simIdController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'sim #',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).grayLighter,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).grayLighter,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).customColor1,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Color(0xFF95A1AC),
                    ),
                    child: CheckboxListTile(
                      value: emailqrcodeValue ??= true,
                      onChanged: (newValue) =>
                          setState(() => emailqrcodeValue = newValue!),
                      title: Text(
                        'E-mail me QR code?',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      subtitle: Text(
                        'QR code will be sent to your E-mail',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      activeColor: FlutterFlowTheme.of(context).primaryColor,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.05),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 40),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Add eSim',
                        options: FFButtonOptions(
                          width: 230,
                          height: 50,
                          color: Color(0xFF043362),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
