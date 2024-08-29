import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drop_list_model.dart';
export 'drop_list_model.dart';

class DropListWidget extends StatefulWidget {
  const DropListWidget({super.key});

  @override
  State<DropListWidget> createState() => _DropListWidgetState();
}

class _DropListWidgetState extends State<DropListWidget> {
  late DropListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowDropDown<String>(
      controller: _model.categpriaAcademicoValueController ??=
          FormFieldController<String>(null),
      options: ['option 1'],
      onChanged: (val) => setState(() => _model.categpriaAcademicoValue = val),
      width: 337.0,
      height: 45.0,
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Manrope',
            letterSpacing: 0.0,
          ),
      hintText: 'Selecionar',
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: FlutterFlowTheme.of(context).secondaryText,
        size: 24.0,
      ),
      fillColor: FlutterFlowTheme.of(context).primaryBackground,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).alternate,
      borderWidth: 2.0,
      borderRadius: 8.0,
      margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
      hidesUnderline: true,
      isOverButton: false,
      isSearchable: false,
      isMultiSelect: false,
    );
  }
}
