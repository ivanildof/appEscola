import '/flutter_flow/flutter_flow_util.dart';
import 'menu_superior_widget.dart' show MenuSuperiorWidget;
import 'package:flutter/material.dart';

class MenuSuperiorModel extends FlutterFlowModel<MenuSuperiorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
