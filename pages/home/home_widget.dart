import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  static String routeName = 'Home';
  static String routePath = '/home';

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
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
      backgroundColor: Color(0xFFF5FAF5),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header: greeting + menu
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    Text('Hello, Nifemi ', style: FlutterFlowTheme.of(context).headlineMedium.override(fontFamily: 'Outfit', color: Color(0xFF1A1A1A), fontSize: 24.0, letterSpacing: 0.0, fontWeight: FontWeight.bold)),
                    Text('🌿', style: TextStyle(fontSize: 24.0)),
                  ]),
                  // Hamburger menu with notification dot
                  InkWell(
                    onTap: () async { context.pushNamed('Events'); },
                    child: Stack(
                      children: [
                        Container(
                          width: 44.0, height: 44.0,
                          decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Color(0xFF1B9B32), width: 1.5)),
                          child: Icon(Icons.menu, color: Color(0xFF1B9B32), size: 22.0),
                        ),
                        Positioned(
                          right: 0.0, top: 0.0,
                          child: Container(width: 10.0, height: 10.0, decoration: BoxDecoration(color: Color(0xFFE53935), shape: BoxShape.circle)),
                        ),
                      ],
                    ),
                  ),
                ]),
                SizedBox(height: 20.0),

                // Greenhouse illustration
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?w=800',
                    width: double.infinity, height: 180.0, fit: BoxFit.cover,
                  ),
                ),

                // Device info card (overlapping)
                Transform.translate(
                  offset: Offset(0.0, -24.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.0), boxShadow: [BoxShadow(blurRadius: 8.0, color: Color(0x1A000000), offset: Offset(0.0, 2.0))]),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 16.0, 14.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
                            Text('Greenhouse 1', style: FlutterFlowTheme.of(context).titleMedium.override(fontFamily: 'Readex Pro', color: Color(0xFF1A1A1A), fontSize: 18.0, letterSpacing: 0.0, fontWeight: FontWeight.w600)),
                            SizedBox(height: 2.0),
                            Text('ID: 1344295024', style: FlutterFlowTheme.of(context).bodySmall.override(fontFamily: 'Readex Pro', color: Color(0xFF9E9E9E), fontSize: 13.0, letterSpacing: 0.0)),
                          ]),
                          Container(
                            width: 36.0, height: 36.0,
                            decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Color(0xFF1B9B32), width: 1.5)),
                            child: Icon(Icons.refresh, color: Color(0xFF1B9B32), size: 20.0),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),

                // Sensor data grid
                // Row 1: Temperature, Humidity, CO2
                Row(children: [
                  Expanded(child: _buildSensorTile(context, icon: Icons.thermostat_outlined, label: 'Temperature', value: '23°c', valueColor: Color(0xFF1B9B32))),
                  SizedBox(width: 10.0),
                  Expanded(child: _buildSensorTile(context, icon: Icons.water_drop_outlined, label: 'Humidity', value: '74%', valueColor: Color(0xFF1B9B32))),
                  SizedBox(width: 10.0),
                  Expanded(child: _buildSensorTile(context, icon: Icons.cloud_outlined, label: 'CO2', value: '99.8%', valueColor: Color(0xFF1B9B32))),
                ]),
                SizedBox(height: 10.0),

                // Row 2: Sunlight, Soil Moisture
                Row(children: [
                  Expanded(
                    child: _buildSensorTile(context, icon: Icons.wb_sunny_outlined, label: 'Sunlight', value: '200 W/m', valueColor: Color(0xFF1B9B32)),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.0), border: Border.all(color: Color(0xFFE8F5E9), width: 1.0)),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(14.0, 14.0, 14.0, 14.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
                          Text('Soil Moisture', style: FlutterFlowTheme.of(context).bodySmall.override(fontFamily: 'Readex Pro', color: Color(0xFF757575), fontSize: 12.0, letterSpacing: 0.0)),
                          SizedBox(height: 6.0),
                          Row(children: [
                            Icon(Icons.grass, color: Color(0xFF1B9B32), size: 18.0),
                            SizedBox(width: 6.0),
                            Text('90%', style: FlutterFlowTheme.of(context).titleSmall.override(fontFamily: 'Readex Pro', color: Color(0xFF1B9B32), fontSize: 16.0, letterSpacing: 0.0, fontWeight: FontWeight.w600)),
                          ]),
                          SizedBox(height: 4.0),
                          Row(children: [
                            Icon(Icons.check_circle, color: Color(0xFF1B9B32), size: 16.0),
                            SizedBox(width: 4.0),
                            Text('Checked 11/05/2024', style: FlutterFlowTheme.of(context).bodySmall.override(fontFamily: 'Readex Pro', color: Color(0xFF1B9B32), fontSize: 12.0, letterSpacing: 0.0)),
                          ]),
                        ]),
                      ),
                    ),
                  ),
                ]),
                SizedBox(height: 10.0),

                // Row 3: Status, Battery, Last Sync
                Row(children: [
                  Expanded(child: _buildSensorTile(context, icon: Icons.wifi, label: 'Status', value: 'Online', valueColor: Color(0xFF1B9B32))),
                  SizedBox(width: 10.0),
                  Expanded(child: _buildSensorTile(context, icon: Icons.battery_charging_full, label: 'Battery', value: '85%', valueColor: Color(0xFF1B9B32))),
                  SizedBox(width: 10.0),
                  Expanded(child: _buildSensorTile(context, icon: Icons.sync, label: 'Last Sync', value: '20 mins ago', valueColor: Color(0xFF1B9B32))),
                ]),
                SizedBox(height: 24.0),

                // Footer
                Center(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text('G-Smart Monitor', style: FlutterFlowTheme.of(context).bodySmall.override(fontFamily: 'Readex Pro', color: Color(0xFF9E9E9E), fontSize: 12.0, letterSpacing: 0.0)),
                    Text('Grow it smartly', style: FlutterFlowTheme.of(context).bodySmall.override(fontFamily: 'Readex Pro', color: Color(0xFFBDBDBD), fontSize: 10.0, letterSpacing: 0.0)),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSensorTile(BuildContext context, {required IconData icon, required String label, required String value, required Color valueColor}) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.0), border: Border.all(color: Color(0xFFE8F5E9), width: 1.0)),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 14.0, 12.0, 14.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
          Icon(icon, color: Color(0xFF1B9B32), size: 24.0),
          SizedBox(height: 10.0),
          Text(label, style: FlutterFlowTheme.of(context).bodySmall.override(fontFamily: 'Readex Pro', color: Color(0xFF757575), fontSize: 12.0, letterSpacing: 0.0)),
          SizedBox(height: 2.0),
          Text(value, style: FlutterFlowTheme.of(context).titleSmall.override(fontFamily: 'Readex Pro', color: valueColor, fontSize: 14.0, letterSpacing: 0.0, fontWeight: FontWeight.w600)),
        ]),
      ),
    );
  }
}
