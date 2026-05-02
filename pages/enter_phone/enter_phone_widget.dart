import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'enter_phone_model.dart';
export 'enter_phone_model.dart';

class EnterPhoneWidget extends StatefulWidget {
  const EnterPhoneWidget({super.key});

  static String routeName = 'EnterPhone';
  static String routePath = '/enterPhone';

  @override
  State<EnterPhoneWidget> createState() => _EnterPhoneWidgetState();
}

class _EnterPhoneWidgetState extends State<EnterPhoneWidget> {
  late EnterPhoneModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnterPhoneModel());
    _model.phoneTextController ??= TextEditingController();
    _model.phoneFocusNode ??= FocusNode();
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
                Text('Enter Your Phone Number', style: FlutterFlowTheme.of(context).headlineLarge.override(fontFamily: 'Outfit', color: Colors.white, fontSize: 28.0, letterSpacing: 0.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 8.0),
                Text('Enter the phone number of the SIM in the device', style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Color(0xDDFFFFFF), fontSize: 14.0, letterSpacing: 0.0, height: 1.5)),
                SizedBox(height: 32.0),

                // Phone field with +234 prefix
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('+234', style: FlutterFlowTheme.of(context).bodyLarge.override(fontFamily: 'Readex Pro', color: Colors.white, fontSize: 16.0, letterSpacing: 0.0, fontWeight: FontWeight.w500)),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: TextFormField(
                        controller: _model.phoneTextController,
                        focusNode: _model.phoneFocusNode,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0x80FFFFFF), width: 1.0)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2.0)),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 8.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Colors.white, fontSize: 16.0, letterSpacing: 0.0),
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ],
                ),

                Spacer(),

                FFButtonWidget(
                  onPressed: () async { context.pushNamed('DeviceAdded'); },
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
