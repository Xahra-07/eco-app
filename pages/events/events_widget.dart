import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'events_model.dart';
export 'events_model.dart';

class EventsWidget extends StatefulWidget {
  const EventsWidget({super.key});

  static String routeName = 'Events';
  static String routePath = '/events';

  @override
  State<EventsWidget> createState() => _EventsWidgetState();
}

class _EventsWidgetState extends State<EventsWidget> {
  late EventsModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Map<String, dynamic>> _events = [
    {'title': 'HUMIDITY LOW', 'desc': 'WARNING: Humidity has dropped below 85%.', 'time': '5hr ago', 'icon': Icons.warning_amber_rounded, 'color': Color(0xFFE53935), 'bgColor': Color(0xFFFFEBEE), 'isWarning': true},
    {'title': 'Battery Low', 'desc': 'Device battery has fallen below 15%.', 'time': '3 days', 'icon': Icons.battery_charging_full, 'color': Color(0xFF1B9B32), 'bgColor': Colors.white, 'isWarning': false},
    {'title': 'C02 Levels High', 'desc': 'CO2 levels have increased beyond optimal range', 'time': '1 mon', 'icon': Icons.cloud_outlined, 'color': Color(0xFF1B9B32), 'bgColor': Colors.white, 'isWarning': false},
    {'title': 'Battery Low', 'desc': 'Device battery has fallen below 15%.', 'time': '3 days', 'icon': Icons.battery_charging_full, 'color': Color(0xFF1B9B32), 'bgColor': Colors.white, 'isWarning': false},
    {'title': 'Temperature High', 'desc': 'Temperature has exceeded safe threshold.', 'time': '1 mon', 'icon': Icons.thermostat_outlined, 'color': Color(0xFF1B9B32), 'bgColor': Colors.white, 'isWarning': false},
  ];

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventsModel());
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
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Greenhouse hero image with back button
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
                child: Image.network('https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?w=800', width: double.infinity, height: 200.0, fit: BoxFit.cover),
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top + 8.0,
                left: 16.0,
                child: InkWell(
                  onTap: () async { context.safePop(); },
                  child: Container(
                    decoration: BoxDecoration(color: Color(0xCCFFFFFF), borderRadius: BorderRadius.circular(20.0)),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 16.0, 8.0),
                      child: Row(mainAxisSize: MainAxisSize.min, children: [
                        Icon(Icons.chevron_left, color: Color(0xFF1A1A1A), size: 20.0),
                        Text('Back', style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Color(0xFF1A1A1A), fontSize: 14.0, letterSpacing: 0.0, fontWeight: FontWeight.w500)),
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),

          // Events header
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
              Text('Events', style: FlutterFlowTheme.of(context).headlineMedium.override(fontFamily: 'Outfit', color: Color(0xFF1A1A1A), fontSize: 24.0, letterSpacing: 0.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 4.0),
              Text('ID: 1344295024', style: FlutterFlowTheme.of(context).bodySmall.override(fontFamily: 'Readex Pro', color: Color(0xFF9E9E9E), fontSize: 13.0, letterSpacing: 0.0)),
            ]),
          ),
          SizedBox(height: 16.0),

          // Events list
          Expanded(
            child: ListView.separated(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
              itemCount: _events.length,
              separatorBuilder: (context, index) => SizedBox(height: 12.0),
              itemBuilder: (context, index) {
                final event = _events[index];
                final bool isWarning = event['isWarning'] as bool;
                return Container(
                  decoration: BoxDecoration(
                    color: isWarning ? Color(0xFFFFEBEE) : Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: isWarning ? Color(0xFFE53935) : Color(0xFFE0E0E0), width: 1.0),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 16.0, 14.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                        Row(mainAxisSize: MainAxisSize.min, children: [
                          Icon(event['icon'] as IconData, color: event['color'] as Color, size: 20.0),
                          SizedBox(width: 8.0),
                          Text(event['title'] as String, style: FlutterFlowTheme.of(context).titleSmall.override(fontFamily: 'Readex Pro', color: event['color'] as Color, fontSize: 14.0, letterSpacing: 0.0, fontWeight: FontWeight.w600)),
                        ]),
                        Text(event['time'] as String, style: FlutterFlowTheme.of(context).bodySmall.override(fontFamily: 'Readex Pro', color: isWarning ? Color(0xFFE53935) : Color(0xFF9E9E9E), fontSize: 12.0, letterSpacing: 0.0)),
                      ]),
                      SizedBox(height: 8.0),
                      Text(event['desc'] as String, style: FlutterFlowTheme.of(context).bodyMedium.override(fontFamily: 'Readex Pro', color: Color(0xFF424242), fontSize: 13.0, letterSpacing: 0.0)),
                    ]),
                  ),
                );
              },
            ),
          ),

          // Footer
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 16.0),
            child: Center(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Text('G-Smart Monitor', style: FlutterFlowTheme.of(context).bodySmall.override(fontFamily: 'Readex Pro', color: Color(0xFF9E9E9E), fontSize: 12.0, letterSpacing: 0.0)),
                Text('Grow it smartly', style: FlutterFlowTheme.of(context).bodySmall.override(fontFamily: 'Readex Pro', color: Color(0xFFBDBDBD), fontSize: 10.0, letterSpacing: 0.0)),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
