import '/flutter_flow/flutter_flow_util.dart';
import 'enter_phone_widget.dart' show EnterPhoneWidget;
import 'package:flutter/material.dart';

class EnterPhoneModel extends FlutterFlowModel<EnterPhoneWidget> {
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneFocusNode?.dispose();
    phoneTextController?.dispose();
  }
}
