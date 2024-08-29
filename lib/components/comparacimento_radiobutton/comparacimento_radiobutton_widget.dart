import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'comparacimento_radiobutton_model.dart';
export 'comparacimento_radiobutton_model.dart';

class ComparacimentoRadiobuttonWidget extends StatefulWidget {
  /// seleção de comparecimento, presente,ausente e atrasado
  const ComparacimentoRadiobuttonWidget({super.key});

  @override
  State<ComparacimentoRadiobuttonWidget> createState() =>
      _ComparacimentoRadiobuttonWidgetState();
}

class _ComparacimentoRadiobuttonWidgetState
    extends State<ComparacimentoRadiobuttonWidget> {
  late ComparacimentoRadiobuttonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComparacimentoRadiobuttonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          FlutterFlowRadioButton(
            options: ['Presente', 'Ausente', 'Atrasado'].toList(),
            onChanged: (val) => setState(() {}),
            controller: _model.radioButtonValueController ??=
                FormFieldController<String>(null),
            optionHeight: 32.0,
            textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Manrope',
                  letterSpacing: 0.0,
                ),
            selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Manrope',
                  letterSpacing: 0.0,
                ),
            buttonPosition: RadioButtonPosition.left,
            direction: Axis.horizontal,
            radioButtonColor: FlutterFlowTheme.of(context).primary,
            inactiveRadioButtonColor:
                FlutterFlowTheme.of(context).secondaryText,
            toggleable: false,
            horizontalAlignment: WrapAlignment.start,
            verticalAlignment: WrapCrossAlignment.start,
          ),
        ],
      ),
    );
  }
}
