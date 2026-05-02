import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'welcome_model.dart';
export 'welcome_model.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({super.key});

  static String routeName = 'Welcome';
  static String routePath = '/welcome';

  @override
  State<WelcomeWidget> createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  late WelcomeModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomeModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1B9B32),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // Farmer hero image — top portion
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://images.unsplash.com/photo-1622383563227-04401ab4e5ea?w=800'),
                ),
              ),
            ),
          ),
          // Green card bottom portion
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1B9B32), Color(0xFF148A28)],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0.0, 1.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(28.0, 28.0, 28.0, 32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Text content
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Hello, Farmer', style: FlutterFlowTheme.of(context).headlineLarge.override(fontFamily: 'Outfit', color: Colors.white, fontSize: 30.0, letterSpacing: 0.0, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8.0),
                        Text('Let\'s monitor critical data that affect your crops, so that you can boost your yield.', style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Color(0xDDFFFFFF), fontSize: 14.0, letterSpacing: 0.0, height: 1.5)),
                      ],
                    ),
                    // Buttons
                    Column(mainAxisSize: MainAxisSize.min, children: [
                      FFButtonWidget(
                        onPressed: () async { context.pushNamed('Register'); },
                        text: 'Register',
                        options: FFButtonOptions(width: double.infinity, height: 50.0, color: Colors.white, textStyle: FlutterFlowTheme.of(context).titleSmall.override(fontFamily: 'Readex Pro', color: Color(0xFF1B9B32), fontSize: 16.0, letterSpacing: 0.0, fontWeight: FontWeight.w600), elevation: 0.0, borderRadius: BorderRadius.circular(8.0)),
                      ),
                      SizedBox(height: 12.0),
                      FFButtonWidget(
                        onPressed: () async { context.pushNamed('Login'); },
                        text: 'Login',
                        options: FFButtonOptions(width: double.infinity, height: 50.0, color: Colors.transparent, textStyle: FlutterFlowTheme.of(context).titleSmall.override(fontFamily: 'Readex Pro', color: Colors.white, fontSize: 16.0, letterSpacing: 0.0, fontWeight: FontWeight.w600), elevation: 0.0, borderSide: BorderSide(color: Colors.white, width: 1.5), borderRadius: BorderRadius.circular(8.0)),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
