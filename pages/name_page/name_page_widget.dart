import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'name_page_model.dart';
export 'name_page_model.dart';

class NamePageWidget extends StatefulWidget {
  const NamePageWidget({super.key});

  static String routeName = 'NamePage';
  static String routePath = '/namePage';

  @override
  State<NamePageWidget> createState() => _NamePageWidgetState();
}

class _NamePageWidgetState extends State<NamePageWidget> {
  late NamePageModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NamePageModel());
    _model.usernameTextController ??= TextEditingController();
    _model.usernameFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { FocusScope.of(context).unfocus(); },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF1B9B32),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(28.0, 40.0, 28.0, 32.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('What should we call you?', style: FlutterFlowTheme.of(context).headlineLarge.override(fontFamily: 'Outfit', color: Colors.white, fontSize: 30.0, letterSpacing: 0.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 8.0),
                Text('This will serve as your username in the app, so you can choose a nickname.', style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Color(0xDDFFFFFF), fontSize: 14.0, letterSpacing: 0.0, height: 1.5)),
                SizedBox(height: 32.0),

                // Username field
                TextFormField(
                  controller: _model.usernameTextController,
                  focusNode: _model.usernameFocusNode,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Colors.white, letterSpacing: 0.0),
                    prefixIcon: Icon(Icons.person_outline, color: Colors.white, size: 22.0),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0x80FFFFFF), width: 1.0)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2.0)),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Colors.white, letterSpacing: 0.0),
                ),

                Spacer(),

                // Continue button
                FFButtonWidget(
                  onPressed: () async { context.pushNamed('AddDevice'); },
                  text: 'Continue',
                  options: FFButtonOptions(width: double.infinity, height: 50.0, color: Colors.white, textStyle: FlutterFlowTheme.of(context).titleSmall.override(fontFamily: 'Readex Pro', color: Color(0xFF1B9B32), fontSize: 16.0, letterSpacing: 0.0, fontWeight: FontWeight.w600), elevation: 0.0, borderRadius: BorderRadius.circular(8.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
