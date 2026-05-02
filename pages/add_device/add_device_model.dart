import '/flutter_flow/flutter_flow_util.dart';
import 'add_device_widget.dart' show AddDeviceWidget;
import 'package:flutter/material.dart';

class AddDeviceModel extends FlutterFlowModel<AddDeviceWidget> {
  FocusNode? deviceFocusNode;
  TextEditingController? deviceTextController;
  String? Function(BuildContext, String?)? deviceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    deviceFocusNode?.dispose();
    deviceTextController?.dispose();
  }
}
