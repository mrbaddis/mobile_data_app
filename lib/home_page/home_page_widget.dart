import '../add_sim/add_sim_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../usage_details/usage_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      curve: Curves.easeOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(79, 0),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
  };
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Dashboard',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).dark400,
                          ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/Screen_Shot_2022-08-14_at_4.13.28_PM.png',
                width: MediaQuery.of(context).size.width * 0.75,
                height: 240,
                fit: BoxFit.contain,
              ).animated([animationsMap['imageOnPageLoadAnimation']!]),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddSimWidget(),
                      ),
                    );
                  },
                  text: 'Add A line',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF043362),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Outfit',
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                child: LinearPercentIndicator(
                  percent: 0.4,
                  width: MediaQuery.of(context).size.width * 0.9,
                  lineHeight: 24,
                  animation: true,
                  progressColor: FlutterFlowTheme.of(context).primaryColor,
                  backgroundColor: FlutterFlowTheme.of(context).grayLighter,
                  barRadius: Radius.circular(40),
                  padding: EdgeInsets.zero,
                ),
              ),
              Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UsageDetailsWidget(),
                          ),
                        );
                      },
                      child: Slidable(
                        actionPane: const SlidableScrollActionPane(),
                        secondaryActions: [
                          IconSlideAction(
                            caption: 'Pay ',
                            color: Color(0xFF78A056),
                            icon: Icons.attach_money_outlined,
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NavBarPage(initialPage: 'payments'),
                                ),
                              );
                            },
                          ),
                          IconSlideAction(
                            caption: 'usage',
                            color: Colors.blue,
                            icon: Icons.flip_to_front,
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UsageDetailsWidget(),
                                ),
                              );
                            },
                          ),
                        ],
                        child: ListTile(
                          title: Text(
                            'Sim name',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Outfit',
                                  color: Colors.black,
                                ),
                          ),
                          subtitle: Text(
                            'Line ID',
                            style:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Outfit',
                                      color: Colors.black,
                                    ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF303030),
                            size: 20,
                          ),
                          tileColor: Colors.white,
                          dense: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
