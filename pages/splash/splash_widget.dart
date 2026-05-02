import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'splash_model.dart';
export 'splash_model.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  static String routeName = 'Splash';
  static String routePath = '/';

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  late SplashModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashModel());

    // Auto-navigate to Welcome after 2.5 seconds
    Future.delayed(Duration(milliseconds: 2500), () {
      if (mounted) {
        context.goNamed('Welcome');
      }
    });
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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Leaf + Wifi icon
            Container(
              width: 64.0, height: 64.0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Leaf shape (simplified)
                  Icon(Icons.eco, color: Colors.white, size: 56.0),
                  // Wifi signal inside
                  Positioned(
                    bottom: 8.0,
                    child: Icon(Icons.wifi, color: Color(0xFF1B9B32), size: 20.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.0),
            // App name
            Text(
              'G-Smart Monitor',
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                fontFamily: 'Outfit',
                color: Colors.white,
                fontSize: 28.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),
            // Tagline
            Text(
              'Grow it smartly',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                color: Color(0xCCFFFFFF),
                fontSize: 16.0,
                letterSpacing: 0.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
