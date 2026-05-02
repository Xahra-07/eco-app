import '/flutter_flow/flutter_flow_util.dart';
import 'name_page_widget.dart' show NamePageWidget;
import 'package:flutter/material.dart';

class NamePageModel extends FlutterFlowModel<NamePageWidget> {
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();
  }
}
