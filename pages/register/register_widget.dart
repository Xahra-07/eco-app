import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'register_model.dart';
export 'register_model.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  static String routeName = 'Register';
  static String routePath = '/register';

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  late RegisterModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterModel());
    _model.emailTextController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();
    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();
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
                Text('Register', style: FlutterFlowTheme.of(context).headlineLarge.override(fontFamily: 'Outfit', color: Colors.white, fontSize: 32.0, letterSpacing: 0.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 8.0),
                Text('Create an account, We are eager to serve you.', style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Color(0xDDFFFFFF), fontSize: 14.0, letterSpacing: 0.0, height: 1.5)),
                SizedBox(height: 40.0),

                // Email field
                TextFormField(
                  controller: _model.emailTextController,
                  focusNode: _model.emailFocusNode,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Colors.white, letterSpacing: 0.0),
                    prefixIcon: Icon(Icons.mail_outline, color: Colors.white, size: 22.0),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0x80FFFFFF), width: 1.0)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2.0)),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Colors.white, letterSpacing: 0.0),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 24.0),

                // Password field
                TextFormField(
                  controller: _model.passwordTextController,
                  focusNode: _model.passwordFocusNode,
                  obscureText: !_model.passwordVisibility,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Colors.white, letterSpacing: 0.0),
                    prefixIcon: Icon(Icons.lock_outline, color: Colors.white, size: 22.0),
                    suffixIcon: InkWell(
                      onTap: () { setState(() { _model.passwordVisibility = !_model.passwordVisibility; }); },
                      child: Icon(_model.passwordVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined, color: Colors.white, size: 22.0),
                    ),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0x80FFFFFF), width: 1.0)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2.0)),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Colors.white, letterSpacing: 0.0),
                ),
                SizedBox(height: 28.0),

                // "or" divider
                Center(child: Text('or', style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Color(0xCCFFFFFF), fontSize: 14.0, letterSpacing: 0.0))),
                SizedBox(height: 20.0),

                // Social buttons row
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  FFButtonWidget(
                    onPressed: () async {},
                    text: 'Apple',
                    icon: Icon(Icons.apple, color: Colors.white, size: 20.0),
                    options: FFButtonOptions(height: 46.0, padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0), color: Colors.transparent, textStyle: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Colors.white, fontSize: 14.0, letterSpacing: 0.0, fontWeight: FontWeight.w500), elevation: 0.0, borderSide: BorderSide(color: Colors.white, width: 1.5), borderRadius: BorderRadius.circular(24.0)),
                  ),
                  SizedBox(width: 16.0),
                  FFButtonWidget(
                    onPressed: () async {},
                    text: 'Google',
                    icon: Icon(Icons.g_mobiledata, color: Colors.white, size: 24.0),
                    options: FFButtonOptions(height: 46.0, padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0), color: Colors.transparent, textStyle: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Colors.white, fontSize: 14.0, letterSpacing: 0.0, fontWeight: FontWeight.w500), elevation: 0.0, borderSide: BorderSide(color: Colors.white, width: 1.5), borderRadius: BorderRadius.circular(24.0)),
                  ),
                ]),

                Spacer(),

                // Register button
                FFButtonWidget(
                  onPressed: () async { context.pushNamed('NamePage'); },
                  text: 'Register',
                  options: FFButtonOptions(width: double.infinity, height: 50.0, color: Colors.white, textStyle: FlutterFlowTheme.of(context).titleSmall.override(fontFamily: 'Readex Pro', color: Color(0xFF1B9B32), fontSize: 16.0, letterSpacing: 0.0, fontWeight: FontWeight.w600), elevation: 0.0, borderRadius: BorderRadius.circular(8.0)),
                ),
                SizedBox(height: 16.0),

                // Login link
                Center(
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Text('Already have an account? ', style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Color(0xCCFFFFFF), fontSize: 14.0, letterSpacing: 0.0)),
                    InkWell(
                      onTap: () async { context.pushNamed('Login'); },
                      child: Text('Login', style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Colors.white, fontSize: 14.0, letterSpacing: 0.0, fontWeight: FontWeight.w600, decoration: TextDecoration.underline)),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
