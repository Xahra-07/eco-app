import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'add_device_model.dart';
export 'add_device_model.dart';

class AddDeviceWidget extends StatefulWidget {
  const AddDeviceWidget({super.key});

  static String routeName = 'AddDevice';
  static String routePath = '/addDevice';

  @override
  State<AddDeviceWidget> createState() => _AddDeviceWidgetState();
}

class _AddDeviceWidgetState extends State<AddDeviceWidget> {
  late AddDeviceModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddDeviceModel());
    _model.deviceTextController ??= TextEditingController();
    _model.deviceFocusNode ??= FocusNode();
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
                Text('Add your Device', style: FlutterFlowTheme.of(context).headlineLarge.override(fontFamily: 'Outfit', color: Colors.white, fontSize: 30.0, letterSpacing: 0.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 8.0),
                Text('Attach your device to your account to access functionality', style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Color(0xDDFFFFFF), fontSize: 14.0, letterSpacing: 0.0, height: 1.5)),
                SizedBox(height: 28.0),

                // Add Device field
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Color(0x80FFFFFF), width: 1.0)),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      Text('Add Device', style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Colors.white, fontSize: 14.0, letterSpacing: 0.0, fontWeight: FontWeight.w600)),
                      Container(
                        width: 28.0, height: 28.0,
                        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white, width: 1.5)),
                        child: Icon(Icons.add, color: Colors.white, size: 18.0),
                      ),
                    ]),
                  ),
                ),

                Spacer(),

                // Continue button
                FFButtonWidget(
                  onPressed: () async { context.pushNamed('EnterPhone'); },
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
