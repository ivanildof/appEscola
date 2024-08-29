import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'selecao_check_model.dart';
export 'selecao_check_model.dart';

class SelecaoCheckWidget extends StatefulWidget {
  const SelecaoCheckWidget({super.key});

  @override
  State<SelecaoCheckWidget> createState() => _SelecaoCheckWidgetState();
}

class _SelecaoCheckWidgetState extends State<SelecaoCheckWidget> {
  late SelecaoCheckModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelecaoCheckModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        checkboxTheme: CheckboxThemeData(
          visualDensity: VisualDensity.compact,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
      ),
      child: Checkbox(
        value: _model.checkboxValue ??= false,
        onChanged: (newValue) async {
          setState(() => _model.checkboxValue = newValue!);
        },
        side: BorderSide(
          width: 2,
          color: FlutterFlowTheme.of(context).secondaryText,
        ),
        activeColor: FlutterFlowTheme.of(context).primary,
        checkColor: FlutterFlowTheme.of(context).info,
      ),
    );
  }
}
