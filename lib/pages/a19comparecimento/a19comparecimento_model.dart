import '/backend/backend.dart';
import '/components/comparacimento_radiobutton/comparacimento_radiobutton_widget.dart';
import '/components/dinamic_textfild/dinamic_textfild_widget.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/components/menu_superior/menu_superior_widget.dart';
import '/components/menu_superior_celular/menu_superior_celular_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a19comparecimento_widget.dart' show A19comparecimentoWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class A19comparecimentoModel extends FlutterFlowModel<A19comparecimentoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuSuperior component.
  late MenuSuperiorModel menuSuperiorModel;
  // Model for menuSuperiorCelular component.
  late MenuSuperiorCelularModel menuSuperiorCelularModel;
  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue1;
  FormFieldController<String>? calssAcademicoValueController1;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue1;
  FormFieldController<String>? secaoAcademicoValueController1;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue1;
  FormFieldController<String>? categpriaAcademicoValueController1;
  // State field(s) for TextfildEncontro widget.
  FocusNode? textfildEncontroFocusNode1;
  TextEditingController? textfildEncontroTextController1;
  String? Function(BuildContext, String?)?
      textfildEncontroTextController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue2;
  FormFieldController<String>? calssAcademicoValueController2;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue2;
  FormFieldController<String>? secaoAcademicoValueController2;
  // State field(s) for TextfildEncontro widget.
  FocusNode? textfildEncontroFocusNode2;
  TextEditingController? textfildEncontroTextController2;
  String? Function(BuildContext, String?)?
      textfildEncontroTextController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue3;
  FormFieldController<String>? calssAcademicoValueController3;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue3;
  FormFieldController<String>? secaoAcademicoValueController3;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue2;
  FormFieldController<String>? categpriaAcademicoValueController2;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue3;
  FormFieldController<String>? categpriaAcademicoValueController3;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue4;
  FormFieldController<String>? calssAcademicoValueController4;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue5;
  FormFieldController<String>? calssAcademicoValueController5;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue4;
  FormFieldController<String>? secaoAcademicoValueController4;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue4;
  FormFieldController<String>? categpriaAcademicoValueController4;
  // State field(s) for TextfildEncontro widget.
  FocusNode? textfildEncontroFocusNode3;
  TextEditingController? textfildEncontroTextController3;
  String? Function(BuildContext, String?)?
      textfildEncontroTextController3Validator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue6;
  FormFieldController<String>? calssAcademicoValueController6;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();

  @override
  void initState(BuildContext context) {
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    menuSuperiorCelularModel =
        createModel(context, () => MenuSuperiorCelularModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  @override
  void dispose() {
    menuSuperiorModel.dispose();
    menuSuperiorCelularModel.dispose();
    menuLateralModel.dispose();
    textfildEncontroFocusNode1?.dispose();
    textfildEncontroTextController1?.dispose();

    paginatedDataTableController1.dispose();
    textfildEncontroFocusNode2?.dispose();
    textfildEncontroTextController2?.dispose();

    paginatedDataTableController2.dispose();
    paginatedDataTableController3.dispose();
    textfildEncontroFocusNode3?.dispose();
    textfildEncontroTextController3?.dispose();

    paginatedDataTableController4.dispose();
  }
}
