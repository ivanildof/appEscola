import '/backend/backend.dart';
import '/components/drop_list/drop_list_widget.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/components/menu_superior/menu_superior_widget.dart';
import '/components/menu_superior_celular/menu_superior_celular_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a12recursos_humanos_widget.dart' show A12recursosHumanosWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class A12recursosHumanosModel
    extends FlutterFlowModel<A12recursosHumanosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for menuSuperior component.
  late MenuSuperiorModel menuSuperiorModel;
  // Model for menuSuperiorCelular component.
  late MenuSuperiorCelularModel menuSuperiorCelularModel;
  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textController1Validator;
  List<InventarioProdutosRecord> simpleSearchResults = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filial widget.
  String? filialValue;
  FormFieldController<String>? filialValueController;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode;
  TextEditingController? nomeProdutoTextController;
  String? Function(BuildContext, String?)? nomeProdutoTextControllerValidator;
  String? _nomeProdutoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for codigoProduto widget.
  FocusNode? codigoProdutoFocusNode;
  TextEditingController? codigoProdutoTextController;
  String? Function(BuildContext, String?)? codigoProdutoTextControllerValidator;
  String? _codigoProdutoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for precoCompra widget.
  FocusNode? precoCompraFocusNode;
  TextEditingController? precoCompraTextController;
  String? Function(BuildContext, String?)? precoCompraTextControllerValidator;
  // State field(s) for nomeCategoria widget.
  FocusNode? nomeCategoriaFocusNode1;
  TextEditingController? nomeCategoriaTextController1;
  String? Function(BuildContext, String?)?
      nomeCategoriaTextController1Validator;
  // State field(s) for nomeCategoria widget.
  FocusNode? nomeCategoriaFocusNode2;
  TextEditingController? nomeCategoriaTextController2;
  String? Function(BuildContext, String?)?
      nomeCategoriaTextController2Validator;
  // State field(s) for nomeCategoria widget.
  FocusNode? nomeCategoriaFocusNode3;
  TextEditingController? nomeCategoriaTextController3;
  String? Function(BuildContext, String?)?
      nomeCategoriaTextController3Validator;
  // State field(s) for nomeCategoria widget.
  FocusNode? nomeCategoriaFocusNode4;
  TextEditingController? nomeCategoriaTextController4;
  String? Function(BuildContext, String?)?
      nomeCategoriaTextController4Validator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue1;
  FormFieldController<String>? calssAcademicoValueController1;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue1;
  FormFieldController<String>? secaoAcademicoValueController1;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue;
  FormFieldController<String>? categpriaAcademicoValueController;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue2;
  FormFieldController<String>? calssAcademicoValueController2;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue2;
  FormFieldController<String>? secaoAcademicoValueController2;
  // State field(s) for CampoDataNascimen widget.
  FocusNode? campoDataNascimenFocusNode1;
  TextEditingController? campoDataNascimenTextController1;
  final campoDataNascimenMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      campoDataNascimenTextController1Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<String>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController5 =
      FlutterFlowDataTableController<String>();
  // State field(s) for CampoDataNascimen widget.
  FocusNode? campoDataNascimenFocusNode2;
  TextEditingController? campoDataNascimenTextController2;
  final campoDataNascimenMask2 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      campoDataNascimenTextController2Validator;
  // State field(s) for CampoDataNascimen widget.
  FocusNode? campoDataNascimenFocusNode3;
  TextEditingController? campoDataNascimenTextController3;
  final campoDataNascimenMask3 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      campoDataNascimenTextController3Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue;
  FormFieldController<String>? acadDropDownGeneroValueController;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController6 =
      FlutterFlowDataTableController<String>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController7 =
      FlutterFlowDataTableController<String>();

  @override
  void initState(BuildContext context) {
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    menuSuperiorCelularModel =
        createModel(context, () => MenuSuperiorCelularModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
    nomeProdutoTextControllerValidator = _nomeProdutoTextControllerValidator;
    codigoProdutoTextControllerValidator =
        _codigoProdutoTextControllerValidator;
  }

  @override
  void dispose() {
    menuSuperiorModel.dispose();
    menuSuperiorCelularModel.dispose();
    menuLateralModel.dispose();
    tabBarController?.dispose();
    textFieldFocusNode?.dispose();

    paginatedDataTableController1.dispose();
    nomeProdutoFocusNode?.dispose();
    nomeProdutoTextController?.dispose();

    codigoProdutoFocusNode?.dispose();
    codigoProdutoTextController?.dispose();

    precoCompraFocusNode?.dispose();
    precoCompraTextController?.dispose();

    nomeCategoriaFocusNode1?.dispose();
    nomeCategoriaTextController1?.dispose();

    nomeCategoriaFocusNode2?.dispose();
    nomeCategoriaTextController2?.dispose();

    nomeCategoriaFocusNode3?.dispose();
    nomeCategoriaTextController3?.dispose();

    nomeCategoriaFocusNode4?.dispose();
    nomeCategoriaTextController4?.dispose();

    paginatedDataTableController2.dispose();
    campoDataNascimenFocusNode1?.dispose();
    campoDataNascimenTextController1?.dispose();

    paginatedDataTableController3.dispose();
    paginatedDataTableController4.dispose();
    paginatedDataTableController5.dispose();
    campoDataNascimenFocusNode2?.dispose();
    campoDataNascimenTextController2?.dispose();

    campoDataNascimenFocusNode3?.dispose();
    campoDataNascimenTextController3?.dispose();

    paginatedDataTableController6.dispose();
    paginatedDataTableController7.dispose();
  }
}
